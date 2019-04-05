ActiveAdmin.register BlogTag do
  config.sort_order = 'id_asc'
  permit_params :name

  form do |f|
    f.inputs do
      f.input :name
      f.button :submit
    end
  end

  index do
    selectable_column
    column :id
    column :name
    actions
  end
end
