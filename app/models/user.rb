class User < ApplicationRecord
  validates :username, presence: { message: 'Is blank, please fix it' },
                       length: { in: 3..20, too_short: 'Username is too short, don\'t be stingy',
                                 too_long: 'Username is too long, calm please' },
                       uniqueness: { message: '%<value>s is already in use, please pick another one' }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
