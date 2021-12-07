class ListingsController < ApplicationController
  before_action :fetch_listing, except: [:new, :create, :index]

  def index
  end

  def show
  end

  def new
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.create(listing_params)
    if @listing.save
      flash[:success] = "Successfully Created !!"
      redirect_to listing_listing_path(@listing)
    else
      flash[:danger] = @listing.errors.full_messages.to_sentence #this will return the full message for the errors "Please input content"
      redirect_back(fallback_location: request.referer)
    end
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      flash[:success] = "Listing updated !!"
    else
      flash[:alert] = @listing.errors.full_messages.to_sentence
    end
    redirect_back(fallback_location: root_path)
  end

  def listing
  end

  def photo
  end

  def description
  end

  def price
  end

  def amenity
  end

  def location
  end

  private
  def listing_params
    params.require(:listing).permit(
      :user_id,
      :listing_name,
      :home_type,
      :room_type,
      :price,
      :accomodate,
      :bedroom_count,
      :bathroom_count,
      :listing_description,
      :has_internet,
      :has_tv,
      :has_kitchen,
      :has_heating,
      :has_air_conditioner,
      :address
    )
  end

  def fetch_listing
    @listing = Listing.find(params[:id])
  end

end
