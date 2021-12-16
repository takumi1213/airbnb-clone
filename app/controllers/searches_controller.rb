class SearchesController < ApplicationController
  include SearchesHelper

  def search
    session[:address] = params[:search] if params.has_key?(:search)
    if check_if_filled?(session[:address])
      @search = Listing.where(is_active: true).near(session[:address], 5, order: 'distance')
    else
      @search = Listing.where(is_active: true)
    end
    unless @search.nil?
      @result_list = @search.paginate(page: params[:page], per_page: 10)
    end
  end

end
