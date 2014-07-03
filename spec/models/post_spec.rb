require 'rails_helper'
describe Post do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        post = FactoryGirl.build(:post)

         expect(post).to be_valid
      end

    end

    context "invalid attributes" do

      it "should not be valid" do
        post = FactoryGirl.build(:post, title: "")

       expect(post).not_to be_valid

      end

    end

  end

end

describe Post do

  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(5) }
  it { should validate_presence_of(:body) }
  it { should ensure_length_of(:body).is_at_least(10) }

end