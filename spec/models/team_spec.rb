require 'rails_helper'

RSpec.describe Team, type: :model do
  before(:each) do
    @cagematch = create(:cagematch)
    @team = build(:team)
    @team.cagematch = @cagematch
  end

  it "is valid with valid attributes" do
    expect(@team).to be_valid
  end

  it "is not valid without a name" do
    @team.name = ""
    expect(@team).to_not be_valid
    @team.name = nil
    expect(@team).to_not be_valid
  end

  it "is valid without a tagline" do
    @team.tagline = ""
    expect(@team).to be_valid
    @team.tagline = nil
    expect(@team).to be_valid
  end
end
