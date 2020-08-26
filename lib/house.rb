class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    integer_price = @price[1..-1]
    integer_price.to_i > 500000
  end

  def rooms_from_category(type)
    rooms_in_category = @rooms.map do |room|
      if room.category == type
        room
      end
    end
  end
end
