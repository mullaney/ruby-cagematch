require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @cagematch = create(:cagematch)
    @post = build(:post)
    @post.cagematch = @cagematch
  end

  it "is valid with valid attributes" do
    expect(@post).to be_valid
  end

  it "is not valid without a title" do
    @post.title = ""
    expect(@post).to_not be_valid
    @post.title = nil
    expect(@post).to_not be_valid
  end

  it "is not valid without an associated cagematch" do
    @post.cagematch = nil
    expect(@post).to_not be_valid
  end

  it "is not valid without an author" do
    @post.author = nil
    expect(@post).to_not be_valid
    @post.author = ""
    expect(@post).to_not be_valid
  end

  it "is not valid without a body" do
    @post.body = nil
    expect(@post).to_not be_valid
    @post.body = ""
    expect(@post).to_not be_valid
  end

  describe ".excerpt" do
    it "returns a string" do
      expect(@post.excerpt.class).to eq(String)
    end

    context "when body is short" do
      it "returns the body" do
        @post.body = "A short phrase"
        expect(@post.excerpt).to eq("A short phrase")
      end
    end

    context "when body is long" do
      it "returns the body" do
        @post.body = "A longer phrase with more than 50 characters should return only some of the string"
        expect(@post.excerpt).to eq("A longer phrase with more than 50 characters...")
      end
    end
  end
end
