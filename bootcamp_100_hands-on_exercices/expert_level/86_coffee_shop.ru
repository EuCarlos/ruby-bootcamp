class CoffeeShop
    attr_reader :name, :menu, :orders
    
    def initialize(name, menu)
        @name = name
        @menu = menu
        @orders = []
    end
    
    def add_order(order)
        if @menu.map{|x| x[:item]}.include?(order)
            @orders.push(order)
            puts "Order added!"
        else
            puts "Sorry, this item is unavailable."
        end
    end
    
    def fulfill_order
        if @orders.size == 0
            return "No orders to fulfill!"
        else
            order = @orders.shift
            puts "The #{order} is ready!"
        end
    end
    
    def cheapest_item
        min_cost = @menu.map{|x| x[:price]}.min
        puts @menu.select{|x| x[:price] == min_cost}[0][:item]
    end
    
    def drinks_only
        puts @menu.select{|x| x[:type] == "drink"}.map{|x| x[:item]}
    end
end

cs1 = CoffeeShop.new

cs1.add_order("hot cocoa")

cs1.add_order("cinnamon roll")
cs1.add_order("iced coffee")
cs1.order()

cs1.fulfill_order()
cs1.fulfill_order()
cs1.order()

cs1.cheapest_item()
cs1.drinks_only()