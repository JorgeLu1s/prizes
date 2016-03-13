class ConditionService

  def prize_won(id)
    @conditions = Condition.all
    @conditions.each do |condition|
      @prize_won = match_conditions(id, condition)
    end
    return @prize_won
  end

  def match_conditions(id, condition)
    case condition.condition_type.id
    when 1
      if id == condition.value
        return true
      end
    when 2
      if id % condition.value == 0
        return true
      end
    when 3
      if (id % condition.value == 0) && id > condition.second_value
        return true
      end
    end
  end
end