class Condition < ActiveRecord::Base
  belongs_to :condition_type
  has_many :prizes

  validates :value, presence: true
  validates :condition_type, presence: true, uniqueness: true
end
