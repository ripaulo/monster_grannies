class GranniesController < ApplicationController
  def index
    @users = User.where(granny: true)
  end

  def show
    @user = User.find(params[:id])
  end
end
