class Condition < ActiveRecord::Base
  belongs_to :condition_type
  has_many :prizes
end
