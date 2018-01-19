namespace :db do
  desc 'filling_db'
  task filling: :environment do
    require 'ffaker'
    10.times do
      name = FFaker::Name.name
      email  = FFaker::Internet.email
      moderator = FFaker::Boolean.maybe
      User.create(name: name, email: email, moderator: moderator)
    end

    15.times do
      title = FFaker::LoremRU.phrase
      body = FFaker::LoremRU.paragraphs
      user = FFaker::Random.rand(1..10)
      Post.create(title: title, body: body, user_id: user)
    end

    20.times do
      body = FFaker::LoremRU.paragraph
      user = FFaker::Random.rand(1..10)
      post = FFaker::Random.rand(1..15)
      Comment.create(body: body, user_id: user, post_id: post)
    end
  end
end