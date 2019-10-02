module ApplicationHelper
   def default_photo(photo, class_photo, alt = "")
    (cl_image_tag  photo, class: class_photo, alt: alt, width: 600, crop: "scale", quality: "auto:best", :fetch_format=>:auto) if photo
  end
  def link_or_sign_in(link)
    user_signed_in? ? link : new_user_session_path
  end
  def photo_16_9(photo, class_photo, alt = "")
    (cl_image_tag photo, class: class_photo, alt: alt, width: 320, height: 180, crop: :fill, quality: "auto:best", :fetch_format=>:auto) if photo
  end
end
