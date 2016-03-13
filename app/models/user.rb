class User < ActiveRecord::Base
	has_many :winners

  def winner?
    if Winner.where(:user_id => self.id).present?
      return true
    else
      return false
    end
  end
end
