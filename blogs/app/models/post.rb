class Post < ActiveRecord::Base
  belongs_to :author
  validates :title, :category, :body, presence: true
  validates :title, length: {minimum: 3}
end
