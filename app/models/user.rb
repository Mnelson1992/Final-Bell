class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :trades
  has_many :positions, through: :trades

  List what the user actually owns, build an instance method on User called
  owned_positions that goes through trades and aggregates the quantity for each position
