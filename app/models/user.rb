class User < ApplicationRecord
  has_many :sent_private_messages, foreign_key: "sender_id"
  has_many :recipients
  has_many :received_private_messages, through: :recipients, source: :private_message
end
