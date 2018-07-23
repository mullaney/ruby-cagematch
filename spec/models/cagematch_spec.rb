require 'rails_helper'

RSpec.describe Cagematch, type: :model do
  before(:each) do
    @cagematch = create(:cagematch)
  end

  it "is valid with valid attributes" do
    expect(@cagematch).to be_valid
  end
  it "is not valid without a title" do
    @cagematch.title = ""
    expect(@cagematch).to_not be_valid
    @cagematch.title = nil
    expect(@cagematch).to_not be_valid
  end
  it "is not valid without a slug" do
    @cagematch.slug = ""
    expect(@cagematch).to_not be_valid
    @cagematch.slug = nil
    expect(@cagematch).to_not be_valid
  end
end
