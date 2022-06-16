require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    user = User.create(id:7, name: 'john5', email:'john5@gmail.com', password: '123456', password_confirmation: '123456')
    post = Post.create(id:1,title: 'Hello', text: 'This is my first post', commentsCounter: 0, likesCounter: 0,
                       user_id: user.id)
    Like.new(user_id: user.id, post_id: post.id)
  end

  before { subject.save }

  it 'should save the data' do
    expect(subject).to be_valid
  end

  it 'name should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'post_id should be a string' do
    subject.post_id = '11123'
    expect(subject).to_not be_valid
  end

  it 'user_id should be a string' do
    subject.user_id = '1123'
    expect(subject).to_not be_valid
  end
end
