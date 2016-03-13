class UserObserver < ActiveRecord::Observer

  def after_save(user)

    @conditions = Condition.all
    @conditions.each do |condition|
      case condition.condition_type.id
      when 1
        if user.id == condition.value
          @winner = Winner.new()
          @winner.user_id = user.id
          @winner.save
        end
      when 2
        if user.id % condition.rule == 0
          if user.id == condition.value
            @winner = Winner.new()
            @winner.user_id = user.id
            @winner.save
          end
        end
      when 3
        if (user.id % condition.rule.split(',')[0] == 0) && user.id > condition.rule.split(',')[1]
          if user.id == condition.value
            @winner = Winner.new()
            @winner.user_id = user.id
            @winner.save
          end
        end
      end
    end
  end

end