class Gossip < ApplicationRecord
  belongs_to :user
  has_many :JoinTableGossipsTags
end
