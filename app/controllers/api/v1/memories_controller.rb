class Api::V1::MemoriesController < ApplicationController

  def index
    @memories = Memory.all
    render json: @memories
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
