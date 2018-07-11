class Api::V1::MemoriesController < ApplicationController
  before_action :requires_login, only: [:index]

  def index
    params_id = get_decoded_token[0]["id"]
    member = Member.find_by(id: params_id)
    @memories = Memory.all.where(member_id: member.id)
    render json: @memories
  end

  def create
    @memory = Memory.new(memory_params)
    # @memory.title = params[:title]
    # @memory.body = params[:body]

    if @memory.save
      render json: @memory
    end
  end

  def update
    memoryToUpdate = Memory.find_by(id: params[:id])
    memoryToUpdate.title = params["title"]
    memoryToUpdate.body = params["body"]
    render json: memoryToUpdate

  end

  def destroy
    trash_memory = Memory.find_by(id: params[:id])
    Memory.delete(trash_memory)
    render json: { message: "Your memory has been deleted!!!" }
  end

  private

  def memory_params
    params.require(:memory).permit(:title, :body, :member_id)
  end

end
