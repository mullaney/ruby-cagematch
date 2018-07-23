require 'rails_helper'

RSpec.describe "cagematches/show", type: :view do
  before(:each) do
    @cagematch = assign(:cagematch, Cagematch.create!(
      :title => "Title",
      :slug => "Slug",
      :time_slot => "Time Slot",
      :theater_name => "Theater Name",
      :theater_url => "MyText",
      :venue_address => "MyText",
      :box_office_url => "MyText",
      :box_office_phone_number => "Box Office Phone Number",
      :ticket_price_description => "Ticket Price Description",
      :show_description => "MyText",
      :logo_url => "http://via.placeholder.com/350x150",
      :show_picture_url => "http://via.placeholder.com/350x150"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    # expect(rendered).to match(/Time Slot/)
    # expect(rendered).to match(/Theater Name/)
    # expect(rendered).to match(/MyText/)
    # expect(rendered).to match(/MyText/)
    # expect(rendered).to match(/MyText/)
    # expect(rendered).to match(/Box Office Phone Number/)
    # expect(rendered).to match(/Ticket Price Description/)
    # expect(rendered).to match(/MyText/)
  end
end
