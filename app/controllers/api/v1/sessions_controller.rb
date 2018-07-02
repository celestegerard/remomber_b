class SessionsController < ApplicationController

  def create
    @member = Member.find_by(username: params["username"])
    if (@member && @member.authenticate(params["password"]))
      render json: {
        username: @member.username,
        id: @member.id
      }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database"
      }, status: :unauthorized
    end
  end

end
