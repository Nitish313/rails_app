class StudentsController < ApplicationController
  def send_mail
    @students = Student.all.order(:name).limit(50)
    StudentMailer.students_details.deliver_now
    flash[:success] = "Mail successfully sent!"
  end
end
