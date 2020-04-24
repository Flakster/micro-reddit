class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, presence: { message: 'should have some text' },
                   length: { in: 2..500,
                             too_short: 'has too few letters, c\'mon!',
                             too_long: 'is too long, please summarize your idea' }
end
