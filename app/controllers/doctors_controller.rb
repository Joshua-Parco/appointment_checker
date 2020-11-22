class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = doctor.new
  end

  def create
    @doctor = Doctor.new(doctors_params)

    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])

    if @doctor.update(doctors_params)
      redirect_to doctor_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def doctors_params
    params.require(:doctor).permit(:name)
  end
end
