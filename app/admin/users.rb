ActiveAdmin.register User do
  config.sort_order = 'last_name_asc'
  permit_params :first_name, :last_name, :email, :password, :password_confirmation

  controller do
    def update
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end
  end

  index do
    selectable_column
    column :id
    column :last_name
    column :first_name
    column :email
    actions
  end
  show do |a|
    attributes_table do
      row :id
      row :first_name
      row :last_name
      row :email
    end
    panel "Mesures" do
      table_for user.user_measures do
        column :id
        column :value
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.button :submit
    end
  end
end
