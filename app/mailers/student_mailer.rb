class StudentMailer < ApplicationMailer
  def students_details
    @students = Student.all.order(:name).limit(50)
    mail(to: "notification@example.com", subject: "Students record")
  end
end
