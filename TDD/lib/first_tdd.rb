
class Array

  def my_uniq
    unique = []

    self.each do |el|
      unique << el unless unique.include?(el)
    end

    unique
  end

  def two_sum
    pairs = []

    self.each_with_index do |el, idx|
      (idx + 1).upto(self.length - 1) do |idx2|
        pairs << [idx, idx2] if el + self[idx2] == 0
      end
    end

    pairs
  end

end

def my_transpose(matrix)
  transposed = []
  i = 0
  until i == matrix.first.length
    new_row = []
    matrix.each do |row|
      new_row << row[i]
    end
    transposed << new_row
    new_row = []
    i += 1
  end

  transposed
end

def stock_picker(stocks)
  profitable_pair = []

  diff = 0

  stocks[0...-1].each_with_index do |el1, idx1|
    stocks[(idx1 + 1)...stocks.length].each_with_index do |el2, idx2|
      if el2 - el1 > diff
        diff = el2 - el1
        profitable_pair = [idx1, idx1 + 1 + idx2]
      end
    end
  end

  profitable_pair
end
