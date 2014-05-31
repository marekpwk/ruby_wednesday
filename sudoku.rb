class SudokuBoard
    attr_reader :grid
    def initialize
       @grid = Array.new(9) { Array.new(9, '-') }
    end

    def set_number(row, col, number)
        if valid_num?(row, col, number)
         @grid[row][col] = number
        end
        "That number isn't valid"
    end

    def print_board
       @grid.each do |r|
         puts r.join(' ')
       end
    end

    def valid_num?(row, col, num)
       valid_row?(row, num) &&
       valid_col?(col, num) &&
       valid_box?(row, col, num)
    end

    def valid_row?(row, number)
       !@grid[row].include?(number)
    end

    def valid_col?(col, number)
       column = @grid.transpose[col]
       !column.include?(number)
    end

    def valid_box?(row, col, number)
       !get_box_nums(row, col).include?(number)
    end

    def get_box_nums(row, col)
       rows, cols = get_rows(row), get_cols(col)
       results = []
       rows.each do |r|
          results.concat(@grid[r][cols.min..cols.max] )
       end
       results
    end

    def get_rows(row)
       (0..8).each_slice(3) do |rows|
           return rows if rows.include?(row)
       end
    end

    def get_cols(col)
       get_rows(col)
    end

end

s = SudokuBoard.new
p s.grid == Array.new(9) { Array.new(9, '-') }
s.set_number(1,1,3)
p s.grid[1][1] == 3
p s.valid_row?(1, 3) == false
p s.valid_row?(2, 3) == true
p s.valid_col?(1, 3) == false
p s.valid_col?(2, 3) == true

p s.valid_box?(2,2,3) == false
p s.valid_box?(2,2,4) == true
s.print_board