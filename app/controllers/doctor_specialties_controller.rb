class DoctorSpecialtiesController < ApplicationController
  def create
    doctor = Doctor.find(params[:doctor_id])
    specialty = Specialty.find(params[:specialty]['id'])
    doctor.specialties << specialty
    redirect_back(fallback_location: root_path)
  end

  def destroy
  end
end
