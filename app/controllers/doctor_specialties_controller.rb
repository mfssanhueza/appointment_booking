class DoctorSpecialtiesController < ApplicationController
  before_action :set_doctor
  before_action :authenticate_admin!
  def create
    specialty = Specialty.find(params[:specialty]['id'])
    @doctor.specialties << specialty
    redirect_back(fallback_location: root_path)
  end

  def destroy
    specialty = Specialty.find(params[:id])
    @doctor.specialties.delete(specialty)
    redirect_back(fallback_location: root_path)
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end
end
