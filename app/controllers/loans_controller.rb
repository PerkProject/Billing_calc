class LoansController < ApplicationController

  def index
    @loans = Loan.all
  end

  def show
    @loan |= Loan.find(params[:id])
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      flash[:notice] = 'Данные добавленны'
      #redirect_to @loan
    else
      flash[:notice] = 'Ошибка при добавлении данных'
      render :new
    end
  end

  private

  def loan_params
    params.require(:loan).permit(:interest_paid, :paid_out, :return_rate, :borrower_id)
  end

end
