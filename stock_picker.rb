def stock_picker(prices)
    p_min = prices[0]
    i_min = 0
    profit = 0
    days = [0, 0]

    prices.each_with_index do |p, i|
        if p < p_min
            p_min = p
            i_min = i
            next
        end

        if p - p_min > profit
            profit = p - p_min
            days = [i_min, i]
        end
    end
    p days
end

stock_picker([17,3,6,9,15,8,6,1,10])
