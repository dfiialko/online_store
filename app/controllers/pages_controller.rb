class PagesController < ApplicationController
  def show
    @page = Page.find_by(params[:id])
  end

  def not_found
    raise 'Not Found'
  end
end
