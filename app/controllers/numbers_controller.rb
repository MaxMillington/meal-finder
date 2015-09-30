class NumbersController < ApplicationController

  def new
    @number = Number.new
  end

  def create
    @number = Number.new(number_params)
    if Number.valid?(@number.phone_number.delete '-, +')
      if @number.save
        flash[:success] = "Your phone number has been registered."
        redirect_to root_path
      else
        flash.now[:warning] = @number.errors.full_messages.join(". ")
        render :new
      end
    else
      redirect_to root_path
      flash.now[:notice] = "That number is not a valid number"
    end
  end

  def index

  end

  def destroy
    @number = Number.find(params[:id])
    @number.delete
    redirect_to admin_dashboard_path
  end

  private

  def number_params
    params.require(:number)
        .permit(:phone_number, :email)
  end
end
