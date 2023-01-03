class User < ApplicationRecord

  has_many :ticket
  has_many :comments
end
