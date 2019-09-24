class EmployeePdf < Prawn::Document
  def initialize(employees)
    super()
    @employees = employees
    table_content
  end
  
  def table_content
    table employee_rows do
      row(0).font_style = :bold
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [150, 250, 100]
    end
  end
  
  def employee_rows
    [['Name','Email', 'Phone No.']] +
      @employees.map do |emp|
      [emp.name, emp.email, emp.phone_number]
    end
  end
end