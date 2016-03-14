class ConditionType < ActiveRecord::Base
  has_many :conditions

  validates :description, presence: true
end
