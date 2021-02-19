class Company::UpdatePlan
  include Interactor

  delegate :company_id, :plan_name, to: :context

  def call
    company.update!(plan: plan)
  end

  private

  def company
    @company ||= Company.where(id: company_id)[0]
  end

  def plan
    @plan ||= Company.plans[get_plan]
  end

  def get_plan
    plan_name.blank? ? company.plan&.to_sym : plan_name.to_sym
  end
end
