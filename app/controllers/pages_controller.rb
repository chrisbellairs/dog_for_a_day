class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
  end

  def my_dogs
  end

  def my_bookings
  end

  def my_account
  end


end
