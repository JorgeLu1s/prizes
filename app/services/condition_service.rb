class ConditionService

  def prize_won(id)
    conditions = Condition.all
    prize = match_conditions(id, conditions)
    return prize
  end

  #verify if one condition match with the
  #register of the subscriber
  def match_conditions(id, conditions)
    prize = false
    conditions.each do |condition|
      case condition.condition_type.id
      when 1
        if id == condition.value
          return condition.prizes[0]
        end
      when 2
        if id % condition.value == 0
          return condition.prizes[0]
        end
      when 3
        if (id % condition.value == 0) && id > condition.second_value
          return condition.prizes[0]
        end
      end
      #if one condition match then finish with the cycle
      break if prize != false
    end

    return prize
  end
end