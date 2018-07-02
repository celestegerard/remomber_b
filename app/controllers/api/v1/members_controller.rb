class Api::V1::MembersController < ApplicationController
  before_action :requires_login, only: [:index]

  def index
    @members = Member.all
    render json: @members
  end

  def create
    @member = Member.new

    @member.username = params[:username]
    @member.password = params[:password]

    members_family = Family.find_by(id: params[:member_id])

      if members_family
        @member.family = members_family
      else
        members_family = Family.create
        @member.family = members_family
      end

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
      if @member.id == get_decoded_token[0]["id"]
        render json: @member.memories
      else
        render json: {
          message: "no access, not authed"
        }, status: :unauthorized
    end
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
