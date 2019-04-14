module ApplicationHelper
   def default_photo(photo, class_photo, alt = "")
    (cl_image_tag  photo, class: class_photo, alt: alt, width: 600, crop: "scale", quality: "auto:best", :fetch_format=>:auto) if photo
  end
end
