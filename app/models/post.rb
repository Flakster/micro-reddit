class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: { message: 'can\'t be empty.' },
                    length: { minimum: 15, too_short: 'is too short, it would not be a valid title' }
  validates :body, presence: true,
                   length: { in: 20..500 }
end
