class CashRegister
  
  attr_accessor :discount, :total, :last_trans_amount
  @@items = []
  
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
    counter = 0
    while counter < quantity
      @@items << title
      counter += 1
    end
    @last_trans_amount = @total
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
    @@items
    
  end
  
  def void_last_transaction
    @total -= @last_trans_amount
  end
  
end
