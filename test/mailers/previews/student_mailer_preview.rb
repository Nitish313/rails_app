# Preview all emails at http://localhost:3000/rails/mailers/student_mailer
class StudentMailerPreview < ActionMailer::Preview
  def students_details
    StudentMailer.students_details
  end
end
