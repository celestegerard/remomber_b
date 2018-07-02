class Api::V1::MembersController < ApplicationController

  def index
    @members = Member.all
    render json: @members
  end

  def create
    @member = Member.new

    @member.username = params[:username]
    @member.password = params[:password]

    if (@member.save)

      payload = {
        username: @member.username,
        id: @member.id
      }

      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      render json: {
        token: token
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
      params.permit(
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
