class Features::Opportunity
  AVAILABLE_ACTIONS = [
    :show,
    :create,
    :delete,
    :share,
    :publish,
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

  def create
    @actions.add(__method__)
  end

  def delete
    @actions.add(__method__)
  end

  def share
    @actions.add(__method__)
  end

  def publish
    @actions.add(__method__)
  end
end
