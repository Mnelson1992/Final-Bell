class Trade < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :position, required: false
end
