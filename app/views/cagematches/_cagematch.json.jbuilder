json.extract! cagematch, :id, :title, :tag_line, :slug, :time_slot, :theater_name, :theater_url, :venue_address, :box_office_url, :box_office_phone_number, :ticket_price_description, :show_description, :logo_url, :show_picture_url, :created_at, :updated_at
json.url cagematch_url(cagematch, format: :json)
