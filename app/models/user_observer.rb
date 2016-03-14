class UserObserver < ActiveRecord::Observer

  def after_save(user)
    conditionService = ConditionService.new()
    prize = conditionService.prize_won(user.id)

    if prize != false
      winner = Winner.new()
      winner.user_id = user.id
      winner.prize = prize.name
      winner.save

      prize.decrement!(:quantity)
    end
  end
end