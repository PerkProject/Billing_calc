class HistoryPaymentsController < ApplicationController
  def show
    @loan ||= @borrower.loans.build
  end
end
