class GranniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # uses scope `grannies` in user.rb
    if params[:query].present?
      @grannies = User.grannies.search_by_name_and_description(params[:query])
    else
      @grannies = User.grannies
    end
  end

  def show
    @granny = User.grannies.find(params[:id])
  end
end
