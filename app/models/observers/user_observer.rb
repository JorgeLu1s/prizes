class UserObserver < ActiveRecord::Observer

  def after_save(user)
    @conditions = Condition.all

    @conditions.each do |condition|
      case condition.condition_type.id
      when 1
        if user.id == condition.rule
          flash[:success] = "You won!"
        else
          flash[:danger] = "You lose this time, please try again"
        end
      when 2
        if user.id % condition.rule == 0
          flash[:success] = "You won!"
        else
          flash[:danger] = "You lose this time, please try again"
        end
      when 3
        if (user.id % condition.rule.split(',')[0] == 0) && user.id > condition.rule.split(',')[1]
          flash[:success] = "You won!"
        else
          flash[:danger] = "You lose this time, please try again"
        end
      end
    end
  end

end