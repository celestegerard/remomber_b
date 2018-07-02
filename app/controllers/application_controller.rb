class ApplicationController < ActionController::API

  def get_secret
    ENV['JWT_SECRET']
  end

  def get_token
    request.headers["Authorization"]
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
























  def require_login
    if (!valid_token?)
      render json: { go_away: true }, status: :unauthorized
    end
  end

  def require_authorization
    @member = Member.find_by(id: params[:member_id])

    if (!authorized?(@member))
      render json: { go_away: true }, status: :unauthorized
    end
  end

  def token_json(member)
    {
      username: member.username,
      user_id: member.id,
      token: generate_token(member)
    }
  end

  def generate_token(member)
    member_id = member.id
    JWT.encode({ "member_id": member.id }, jwt_password, 'HS256')
  end

  def jwt_password
    ENV["JWT_PASSWORD"]
  end

  def try_decode_token
    token = request.headers["Authorization"]

    begin
      decoded = JWT.decode(token, jwt_password, true, { algorithm: 'HS256' })
    rescue JWT::VerificationError
      return nil
    end

    decoded
  end

  def current_member_id
    decoded = try_decode_token

    unless decoded && decoded[0] && decoded[0]["member_id"]
      return nil
    end

    decoded[0]["member_id"]
  end

  def valid_token?
    !!try_decode_token
  end

  def authorized?(user)
    current_member_id == member.id
  end

end
