class ApplicationController < ActionController::API

  def get_secret
    ENV['JWT_SECRET']
  end

  def get_token
    request.headers["Authorization"]
  end

  def generate_token
    payload = {
      username: @member.username,
      id: @member.id
    }
  JWT.encode payload, get_secret(), 'HS256'
end


  def get_decoded_token
    token = get_token()
    begin
      decoded_token = JWT.decode token, get_secret(), true, { algorithm: 'HS256' }
    rescue JWT::DecodeError
      return nil
    end
    decoded_token
  end

  def is_authenticated?
    !!get_decoded_token
  end

  def requires_login
    if !is_authenticated?
    render json: {
      message: "No good"
    }, status: :unauthorized
  end
end

end
