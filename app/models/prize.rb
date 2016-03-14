class Prize < ActiveRecord::Base
  belongs_to :condition

  validates :name, presence: true
  validates :quantity, presence: true
  validates :condition_id, presence: true
end
