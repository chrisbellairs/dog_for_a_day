class DogsController < ApplicationController
  def index
    sql_query = " \
            dogs.breed ILIKE :query \
            OR users.address ILIKE :query"

    if params[:query].present?
      @dogs = Dog.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @dogs = Dog.all
    end

    users = @dogs.map do |dog|
      [dog.user, dog]
    end

    @markers = []

    users.each do |user|
      @markers << {
        lat: user[0].latitude,
        lng: user[0].longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { dog: user[1] })
      }
    end

    # @markers = Dog.all.geocoded.map do |dog|
    #   {
    #     lat: dog.latitude,
    #     lng: dog.longitude,
    #     infoWindow: render_to_string(partial: "infowindow", locals: { dog: dog })
    #   }
    # end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :biography, :breed, :age, :size,
                :good_with_children, :walk, :energy, :friendly, :user, :photo)
  end
end
