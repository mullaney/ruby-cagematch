ActiveAdmin.register Cagematch do
  filter :title
  filter :slug
  filter :theater_name

  index do
    id_column
    column :title
    column :slug
    column :theater_name
    actions
  end
end
