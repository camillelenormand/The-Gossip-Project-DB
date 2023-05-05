class User < ApplicationRecord
  has_many :sent_private_messages, foreign_key: "sender_id"
  has_many :recipients
  has_many :private_messages, through: :recipients, source: :private_message
  has_many :comments
  has_many :likes
end
