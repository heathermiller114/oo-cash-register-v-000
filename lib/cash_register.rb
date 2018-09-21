class CashRegister
  
  attr_accessor :discount, :total

  
  def initialize(discount = 0)
    total = 0
    @total = total
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if discount > 0
      @total = @total * ((100 - discount.to_f) / 100)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    items_array = []
    items_array << items
    
  end
  
  def void_last_transaction
  end
  
end
