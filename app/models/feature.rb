class Feature < ApplicationRecord
  has_many :feature_resorts, dependent: :destroy
  has_many :resorts, through: :feature_resorts
  validates :name, presence: true, uniqueness: true
end
