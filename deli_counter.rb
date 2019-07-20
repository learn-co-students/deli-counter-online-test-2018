katz_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]

def line(deli_arr)
    if deli_arr.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently: "
        deli_arr.each.with_index(1) do |guest, position|
            current_line += "#{position}. #{guest} "
        end
        puts current_line.strip
    end
end

def take_a_number(deli_arr, guest_name)
    deli_arr << guest_name
    puts "Welcome, #{guest_name}. You are number #{deli_arr.size} in line."
end

def now_serving(deli_arr)
    if deli_arr.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{deli_arr[0]}."
        deli_arr.shift
    end
end



line(katz_deli)
take_a_number(katz_deli, "Michael")