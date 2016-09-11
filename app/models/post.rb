class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
    per_page = 10

	validates_presence_of :title
	validates_presence_of :body

    def timestamp
        created_at.strftime('%d %B %Y %H:%M:%S')
    end
end
