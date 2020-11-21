class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
end
