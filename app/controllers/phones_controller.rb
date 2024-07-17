class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      redirect_to "/phones"
    else render "/phones/new", status: :unprocessable_entity     end
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update(phone_params)
      redirect_to "/phones"
    else render :edit, status: :unprocessable_entity     end
  end

  private

  def phone_params
    params.require(:phone).permit(:pbrand, :pmodel)
  end
end
