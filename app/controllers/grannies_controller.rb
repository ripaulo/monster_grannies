class GranniesController < ApplicationController
  before_action :set_grannies, only: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index; end

  def show
    @granny = @grannies.find(params[:id])
  end

  private

  def set_grannies
    @grannies = User.where(granny: true)
  end
end
