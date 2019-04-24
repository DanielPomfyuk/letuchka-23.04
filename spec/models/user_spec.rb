require 'spec_helper'
require_relative '../../app/models/post'
RSpec.describe Post, type: model do           #
  context 'before creating' do  # (almost) plain English
    it 'should have params' do   #
      post=Post.reflect_on_association(:user)
      expect(post.macro).to eq :belongs_to
    end
    it "is valid with valid attributes" do
      subject = Post.new
      subject.title = "Anything"
      subject.body = "Anything"
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject = Post.new
      expect(subject).to_not be_valid
    end

    it "is not valid without a body" do
      subject = Post.new
      subject.title = "Anything"
      expect(subject).to_not be_valid
    end

  end
end
RSpec.describe User, type: model do           #
  context 'before creating' do  # (almost) plain English
    it "is valid with valid attributes" do
      subject = User.new
      subject.email = "Jack"
      subject.password = "Kook"
      expect(subject).to be_valid
    end

    it "is not valid without an email" do
      subject = User.new
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject = User.new
      subject.email = "Anything"
      expect(subject).to_not be_valid
    end
  end
end
end
