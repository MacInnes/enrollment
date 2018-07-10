class AddressesController < ApplicationController

  def new
    student = Student.find(params[:student_id])
    @address = student.addresses.create()
  end

end
