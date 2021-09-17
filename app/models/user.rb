class User < ApplicationRecord
  has_many :scope_users
  has_many :seen_resources

  has_many :scopes, through: :scope_users
  has_many :resources, through: :seen_resources
end
