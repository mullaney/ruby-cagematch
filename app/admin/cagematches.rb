ActiveAdmin.register Cagematch do
  permit_params :title, :slug, :time_slot, :theater_name, :theater_url, 
                :venue_address, :box_office_url, :box_office_phone_number, 
                :ticket_price_description, :show_description, :logo_url, 
                :show_picture_url, :tag_line

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
