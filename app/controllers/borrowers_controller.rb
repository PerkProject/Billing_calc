class BorrowersController < ApplicationController

  def index
    @borrowers = Borrower.all
  end

  def new
    @borrower = Borrower.new
  end

  def show
    @borrower = Borrower.find(params[:id])
  end

  def create
    @borrower = Borrower.new(borrower_params)
    @borrower.investor_id = 1 #пока инвестор только 1
    if @borrower.save
      flash[:notice] = 'Данные добавленны'
      redirect_to @borrower
    else
      flash[:notice] = 'Ошибка при добавлении данных'
      render :new
    end
  end

  private

  def borrower_params
    params.require(:borrower).permit(:name, :desc)
  end
end
