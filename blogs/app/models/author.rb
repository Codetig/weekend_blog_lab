class Author < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {in: (4..20)}
  validates :age, numericality: {only_number: true}
  has_many :posts, dependent: :destroy
end
