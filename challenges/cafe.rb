$menu_options = [
    {name: "Latte", price: 4},
    {name: "Scone", price: 5},
    {name: "Tea", price: 3},
    {name: "Donut", price: 4},
    {name: "Mocha", price: 6},
    {name: "Ice Tea", price: 6},
    {name: "Salad", price: 5},
    {name: "Chips", price: 3},
    ]

$order = {
    items: [],
    total: 0
}

def print_options
    puts "Here is the xxKeefer Cafe menu!"
    puts "-"*32
    puts "[0] Submit : Finalise Bill."
    for item in $menu_options
       puts  "[#{$menu_options.index(item)+1}] #{item[:name]} : $#{item[:price]}"
    end
end

def get_order
ordering = true
    while ordering
        print_options
        puts "-"*32
        puts "Your Current order is "
        current_order
        puts "-"*32
        puts "What would you like to order?"
        choice = gets.strip
        if validate_input(choice)
            choice = choice.to_i
            if choice>0 && choice <= $menu_options.size
                choice-=1
                puts "How many #{$menu_options[choice][:name]}s would you like?"
                qty = gets.strip
                if validate_input(qty)
                    qty = qty.to_i
                    puts `clear`
                    puts "Adding #{qty} #{$menu_options[choice][:name]}(s) to your order."
                    $order[:items].push({name: $menu_options[choice][:name], price: $menu_options[choice][:price],  qty: qty})
                    $order[:total]+= $menu_options[choice][:price]*qty
                else
                    puts `clear`
                    err_not_num
                end
            elsif choice > $menu_options.size && choice != 360
                puts `clear`
                err_not_on_list
            elsif choice == 360
				staff_mode()
            else
                puts `clear`
                puts "Final order is..."
                puts "-"*32
                current_order
                puts "-"*32
                ordering = false
            end
        else
            puts `clear`
            err_not_num
        end

    end
end

def current_order()
    if $order[:total] == 0
        puts "Nothing."
    else
        for purchased in $order[:items]
           puts "#{purchased[:qty]}x #{purchased[:name]}(s) = Sub: $#{purchased[:price]*purchased[:qty]}"
        end
        puts "-"*32
        puts "Total Cost: $#{$order[:total]}"
    end
end

def validate_input(input)
    input.match(/[^\d].*/).nil? ? true : false
end

def err_not_num()
    puts "--!Err: Input not a number."
    puts "↑"*32
    puts "!ERROR"*5 +"!!"
    puts "↑"*32
end

def err_not_on_list()
    puts "--!Err: Choice did not exist."
    puts "↑"*32
    puts "!ERROR"*5 +"!!"
    puts "↑"*32
end

def staff_mode()
   	puts `clear`
  	puts "////////STAFF MODE////////"
 	print "Add to menu: "
 	new_item = gets.strip
 	print "\n Price? $"
 	new_price= gets.strip.to_i
  	$menu_options.push({name: new_item, price: new_price})
end

def main
    puts `clear`
    get_order
end

main
