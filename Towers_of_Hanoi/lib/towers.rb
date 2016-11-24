class Towers
  attr_accessor :towers

  def initialize(discs)
    @towers = [[], [], []]
    (1..discs).each do |i|
      @towers[0].unshift(i)
    end
  end

  def move(start_pos, end_pos)
    position = [start_pos, end_pos]
    raise unless valid_move?(position)

    disc = @towers[start_pos].pop

    @towers[end_pos].push(disc)

    won?
  end

  def valid_move?(pos)
    i, j = pos

    return false unless (0..2).include?(i) && (0..2).include?(j)

    return false if @towers[i].empty?

    if @towers[j].last
      return false if @towers[j].last < @towers[i].last
    end

    true
  end

  def won?
    @towers[1..-1].each do |tower|
      return true if tower.length == 3
    end
    false
  end

end
