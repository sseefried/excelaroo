class MainController < ApplicationController

  def index
    @sheet = ExcelTable.get("#{RAILS_ROOT}/excel_examples/Simple.xlsx")
  end

end
