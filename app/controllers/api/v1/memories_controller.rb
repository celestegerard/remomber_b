class Api::V1::MemoriesController < ApplicationController
  before_action :requires_login, only: [:index]

  def index
    render json: Memory.all
  end

  def create
    @memory = Memory.new(memory_params)

    if @memory.save
      render json: @memory
    end
  end

  private

  def memory_params
    params.require(:memory).permit(
      :timestamp,
      :title,
      :body,
      :tag_id,
      :member_id
    )
  end

end
