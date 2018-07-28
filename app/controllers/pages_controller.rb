class PagesController < ApplicationController
  def show
    begin
      render params[:id]
    rescue ActionView::MissingTemplate
      render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
    end
  end
end
