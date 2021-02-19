class Plans::Itau
  class << self
    def build_features
      {
        opportunity: build_opportunity_features,
        dashboard: build_dashboard_features,
      }
    end

    private

    def build_opportunity_features
      opportunity = Features::Opportunity.new

      opportunity.create
      opportunity.publish
      opportunity.show
      opportunity.share
      opportunity.actions.list_all
    end

    def build_dashboard_features
      dashboard = Features::Dashboard.new

      dashboard.show
      dashboard.delete_stat
      dashboard.actions.list_all
    end
  end
end
