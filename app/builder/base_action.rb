class BaseAction
  def initialize
    @actions = []
  end

  def add(action)
    @actions << action unless @actions.include?(action)
  end

  def list_all
    @actions
  end
end
