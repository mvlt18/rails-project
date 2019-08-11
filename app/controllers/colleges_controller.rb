class CollegesController < ApplicationController
  before_action :require_logged_in

  def index
    @colleges = College.all
  end

  def show
    @college = College.find_by_id(params[:id])
  end

  def popular
    @colleges = College.all
    @list = @colleges.submissions_count
    render :popular
  end

end
