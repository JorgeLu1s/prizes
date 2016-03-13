class UserObserver < ActiveRecord::Observer

  def after_save(user)
    conditionService = ConditionService.new()
    @won = conditionService.prize_won(user.id)

    if @won == true
      @winner = Winner.new()
      @winner.user_id = user.id
      @winner.save
    end
  end
end