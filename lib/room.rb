class Room
  attr_reader :category

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paint_status = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @paint_status
  end

  def paint
    @paint_status = true
  end
end
