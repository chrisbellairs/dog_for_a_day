class BookingsController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  def show
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dog_path(@dog)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :dog, :user)
  end
end
