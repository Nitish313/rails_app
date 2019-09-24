class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(:name).limit(50)
    
    respond_to do |format|
      format.html
      format.pdf do
        pdf = EmployeePdf.new(@employees)
        send_data pdf.render, filename: "employee-#{Date.today}.pdf", type: 'application/pdf'
      end
    end
  end
end
