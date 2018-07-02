class Api::V1::FamiliesController < ApplicationController

  def index
    @families = Family.all
    render json: @families
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      render json: @family
    end
  end

  private

    def family_params
      params.require(:family).permit(

        :last_name
      )
    end


end
