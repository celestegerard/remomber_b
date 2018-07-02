class Api::V1::MembersController < ApplicationController

  def index
    @members = Member.all
    render json: @members
  end

  def create
    @member = Member.new(member_params)

    @member.username = params[:username]
    @member.password = params[:password]

    if (@member.save)
      render json: {
        username: @member.username,
        id: @member.id
      }
    else
      render json: {
        errors: @member.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def members_memories
    @member = Member.find_by(id: params[:member_id])
    render json: @member.memories
  end

  private

    def member_params
      params.require(:member).permit(
        :first_name,
        :middle_name,
        :is_account,
        :dob,
        :timestamp,
        :username,
        :password,
        :family_id
      )
    end

end
