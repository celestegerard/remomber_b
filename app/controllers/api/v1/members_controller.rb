class Api::V1::MembersController < ApplicationController

  def index
    @members = Member.all
    render json: @members
  end

  def create
    byebug
    @member = Member.new(member_params)
    if @member.save
      render json: @member
    end
  end

  private

    def member_params
      params.require(:member).permit(
        :first_name,
        :middle_name,
        :dob,
        :timestamp,
        :username,
        :password,
        :family_id
      )
    end

end
