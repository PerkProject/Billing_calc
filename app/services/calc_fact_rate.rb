class FactRate
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def billing_history
    Time.new(params[:month], params[:payment]) if history_payment_present?
    rescue ArgumentError
  end

  private

  def history_payment_present?
    [params[:month], params[:payment]].all?(&:present?)
  end
end
