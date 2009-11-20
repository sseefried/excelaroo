class ExcelTable
  
  def self.get(file)
    raise "File #{file} does not exist" unless File.exist?(file) 
    e = Excelx.new(file)
    e.default_sheet = e.sheets.first
    data = []

    (e.first_row..e.last_row).each do |row|
      data[row] = []
      (e.first_column..e.last_column).each do |col|
        data[row][col] = if e.formula?(row,col)
                           e.formula(row,col)
                         else
                           e.cell(row,col)
                         end
      end

    end
    return { :first_row => e.first_row, :last_row => e.last_row,
      :first_col => e.first_column, :last_col => e.last_column,
      :first_col_as_letter => e.first_column_as_letter,
      :data => data }

  end

end
