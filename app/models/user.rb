class User < ActiveRecord::Base
	has_many :winners

  validates :email, presence: true
  validates_uniqueness_of :email, conditions: -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }

  def winner?
    if Winner.where(:user_id => self.id).present?
      return true
    else
      return false
    end
  end
end
