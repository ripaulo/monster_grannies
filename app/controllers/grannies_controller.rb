class GranniesController < ApplicationController
  def index
    @grannies = User.where(granny: true)
  end

  def show
    @granny = User.find(params[:id])
  end
end
