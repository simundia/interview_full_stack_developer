class Resource < ApplicationRecord
  has_many :seen_resources
  has_many :users, through: :seen_resources
end
