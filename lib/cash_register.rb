class CashRegister
    attr_accessor :total, :discount, :items, :new_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items =[]
    end

    def add_item(title, price, quantity = 1)
        self.new_price = price * quantity
        @total += self.new_price
        quantity.times {self.items << title}
    end

    def apply_discount
        if(discount != 0)
            self.total = (self.total - (self.total * self.discount.to_f / 100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= new_price
    end


end

discount = CashRegister.new 