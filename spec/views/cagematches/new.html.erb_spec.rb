require 'rails_helper'

RSpec.describe "cagematches/new", type: :view do
  before(:each) do
    assign(:cagematch, Cagematch.new(
      :title => "MyString",
      :slug => "MyString",
      :time_slot => "MyString",
      :theater_name => "MyString",
      :theater_url => "MyText",
      :venue_address => "MyText",
      :box_office_url => "MyText",
      :box_office_phone_number => "MyString",
      :ticket_price_description => "MyString",
      :show_description => "MyText",
      :logo_url => "MyText",
      :show_picture_url => "MyText"
    ))
  end

  it "renders new cagematch form" do
    render

    assert_select "form[action=?][method=?]", cagematches_path, "post" do

      assert_select "input[name=?]", "cagematch[title]"

      assert_select "input[name=?]", "cagematch[slug]"

      assert_select "input[name=?]", "cagematch[time_slot]"

      assert_select "input[name=?]", "cagematch[theater_name]"

      assert_select "textarea[name=?]", "cagematch[theater_url]"

      assert_select "textarea[name=?]", "cagematch[venue_address]"

      assert_select "textarea[name=?]", "cagematch[box_office_url]"

      assert_select "input[name=?]", "cagematch[box_office_phone_number]"

      assert_select "input[name=?]", "cagematch[ticket_price_description]"

      assert_select "textarea[name=?]", "cagematch[show_description]"

      assert_select "textarea[name=?]", "cagematch[logo_url]"

      assert_select "textarea[name=?]", "cagematch[show_picture_url]"
    end
  end
end
