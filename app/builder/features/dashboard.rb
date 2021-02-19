class Features::Dashboard
  AVAILABLE_ACTIONS = [
    :show,
    :delete_stat,
    :create_stat,
  ]

  def initialize
    reset
  end

  def reset
    @actions = BaseAction.new
  end

  def actions
    actions = @actions
    reset
    actions
  end

  def show
    @actions.add(__method__)
  end

  def create_stat
    @actions.add(__method__)
  end

  def delete_stat
    @actions.add(__method__)
  end
end
