class Matrix
  attr_reader :rows, :columns
  def initialize(matrix)
    @rows = make_rows(matrix)
    @columns = make_cols
  end

  private

  def make_rows(matrix)
    matrix.lines.map { |row| format_row(row) }
  end

  def format_row(row)
    row.split.map(&:to_i)
  end

  def make_cols
    rows.first.map.with_index { |_, i| create_column_array(i) }
  end

  def create_column_array(row_index)
    rows.map.with_index { |_, j| @rows[j][row_index] }
  end
end
