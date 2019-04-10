ActiveAdmin.register Measure do
  config.sort_order = 'position_asc'

  permit_params :name, :description, :position, :video, :important
  index do
    selectable_column
    column :id
    column :name
    column :description
    column :position
    column :important
    column "Video" do |measure|
      link_to "Lien", measure.video, target: '_blank'
    end
    actions
  end

  show do |a|
    attributes_table do
      row :name
      row :position
      row :description
      row :important
      row :video
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :video
      f.input :position
      f.input :important
      f.button :submit
    end
  end
end
