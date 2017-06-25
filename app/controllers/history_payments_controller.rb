class HistoryPaymentsController < ApplicationController
  def show
    @loan ||= @borrower.loans.build
  end
  def index
    @history_payments = History_payment.all
  end
end
