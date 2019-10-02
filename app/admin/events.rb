ActiveAdmin.register Event do
  config.sort_order = 'date_desc'

  permit_params :name,
      :place,
      :description,
      :inscription_link,
      :visible,
      :date,
      :picture,
      :remote_picture_url

  index do
    selectable_column
    column :id
    column :name
    column :place
    column "Date" do |event|
      event.complete_date
    end
    toggle_bool_column :visible
    actions
  end

  show do |a|
    attributes_table do
      row :name
      row :place
      row :description
      row :date
      row :inscription_link
      row :picture do |event|
        image_tag event.picture.url
      end
      row :visible
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :picture, as: :file, hint: cl_image_tag(f.object.picture.url), label: "Importer une photo"
      f.input :remote_picture_url, label: "Photo URL"
      f.input :picture_cache, as: :hidden
      f.input :date, as: :date_time_picker, class: 'input-w-100'
      f.input :place
      f.input :description
      f.input :inscription_link
      f.input :visible
      f.button :submit
    end

  end

end
