class Api::V1::TagsController < ApplicationController
  # before_action :requires_login, only: [:index]

  def index
    @tags = Tag.all
    render json: @tags
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render json: @tag
    end
  end

  private

  def tag_params
    params.require(:tag).permit(
      :name,
      :memory_id
    )
  end

end
