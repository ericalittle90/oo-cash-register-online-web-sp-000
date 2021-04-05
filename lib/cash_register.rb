class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @last_total = @total
    @total += price * quantity
    end

    def apply_discount
      if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      end 
    end

end
