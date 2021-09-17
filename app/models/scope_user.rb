class ScopeUser < ApplicationRecord
  belongs_to :user
  belongs_to :scope
end
