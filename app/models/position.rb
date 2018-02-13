class Position < ApplicationRecord

  has_many :trades
  has_many :users, through: :trades
end
