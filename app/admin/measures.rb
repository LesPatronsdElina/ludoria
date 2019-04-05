ActiveAdmin.register Measure do
  config.sort_order = 'position_asc'

  permit_params :name, :description, :position, :video
  index do
    selectable_column
    column :id
    column :name
    column :description
    column :position
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
      row :video
    end
  end
end
