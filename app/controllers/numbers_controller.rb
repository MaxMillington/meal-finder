class NumbersController < ApplicationController

  def new
    @number = Number.new
  end

  def create
    @number = Number.new(number_params)

    if @number.save
      flash[:success] = "Your phone number has been registered."
      redirect_to root_path
    else
      flash.now[:warning] = @number.errors.full_messages.join(". ")
      render :new
    end
  end

  def index

  end

  private

  def number_params
    params.require(:number)
        .permit(:phone_number, :email)
  end
end
