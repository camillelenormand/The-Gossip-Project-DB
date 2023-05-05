class Gossip < ApplicationRecord
  belongs_to :user
  has_many :JoinTableGossipsTags
  has_many :comments
  has_many :likes
end
