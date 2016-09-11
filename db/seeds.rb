require 'faker'

# Users
senses = User.create(:name => 'Senses',
					:email => 'senses@gmail.com',
					:password => 'senses123')
embs = User.create(:name => 'EMBS UnB', 
					:email => 'embsunb@gmail.com', 
					:password => 'biomedica2014')
levy = User.create(:name => 'Lucas de Levy',
					:email => 'lucasdelevy@gmail.com',
					:password => 'meusenses')

# Posts
post = Post.create(:title => 'Post default',
					:body => 'Ipsum Lorem etc.')

99.times do |post|
    post = Post.create(
        :title => Faker::Lorem.sentence(1),
        :body => Faker::Lorem.paragraph(1))
end