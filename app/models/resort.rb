class Resort < ApplicationRecord
  belongs_to :user
  has_many :feature_resorts
end
