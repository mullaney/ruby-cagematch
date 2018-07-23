require 'rails_helper'

RSpec.describe "cagematches/index", type: :view do
  before(:each) do
    assign(:cagematches, [
      Cagematch.create!(
        :title => "Title",
        :slug => "slug",
        :time_slot => "Time Slot",
        :theater_name => "Theater Name",
        :theater_url => "MyText",
        :venue_address => "MyText",
        :box_office_url => "MyText",
        :box_office_phone_number => "Box Office Phone Number",
        :ticket_price_description => "Ticket Price Description",
        :show_description => "MyText",
        :logo_url => "MyText",
        :show_picture_url => "MyText"
      ),
      Cagematch.create!(
        :title => "Title",
        :slug => "slug",
        :time_slot => "Time Slot",
        :theater_name => "Theater Name",
        :theater_url => "MyText",
        :venue_address => "MyText",
        :box_office_url => "MyText",
        :box_office_phone_number => "Box Office Phone Number",
        :ticket_price_description => "Ticket Price Description",
        :show_description => "MyText",
        :logo_url => "MyText",
        :show_picture_url => "MyText"
      )
    ])
  end

  it "renders a list of cagematches" do
    render
    assert_select "div.resource-list-name", :text => "Title".to_s, :count => 2
    # assert_select "tr>td", :text => "Title".to_s, :count => 2
    # assert_select "tr>td", :text => "Slug".to_s, :count => 2
    # assert_select "tr>td", :text => "Time Slot".to_s, :count => 2
    # assert_select "tr>td", :text => "Theater Name".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "Box Office Phone Number".to_s, :count => 2
    # assert_select "tr>td", :text => "Ticket Price Description".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
