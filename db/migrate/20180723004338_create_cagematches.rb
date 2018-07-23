class CreateCagematches < ActiveRecord::Migration[5.1]
  def change
    create_table :cagematches do |t|
      t.string :title
      t.string :slug
      t.string :time_slot
      t.string :theater_name
      t.text :theater_url
      t.text :venue_address
      t.text :box_office_url
      t.string :box_office_phone_number
      t.string :ticket_price_description
      t.text :show_description
      t.text :logo_url
      t.text :show_picture_url

      t.timestamps
    end
  end
end
