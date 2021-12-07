module ListingsHelper

  def is_filled?(entry)
    if entry.present?
      content_tag :i, nil, class: 'fa fa-check text-success'
    else
      content_tag :i, nil, class: 'fa fa-times text-danger'
    end
  end

  def is_ready_to_publish(listing)
    listing.address.present? && listing.listing_description.present? && listing.price.present? && listing.listing_name.present? #&& listing.images.present?
  end

end

