ActiveAdmin.register User do
  permit_params :email
  
  filter :email
  filter :last_sign_in_at
  filter :created_at

  index do
    id_column
    column :email
    column :last_sign_in_at
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :email
      row :last_sign_in_at
      row :reset_password_sent_at
      row :remember_created_at
      row :updated_at
      row :created_at
    end
    active_admin_comments
  end

  form title: 'Edit a User' do |f|
    inputs 'Details' do
      input :email
    end
    actions
  end
end
