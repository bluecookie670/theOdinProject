stock_price_per_day = [80,3,1,2,33,50,23,999,4000]

def stock_picker (array)
  besto_overall_profit = 0
  best_sell = 0
  best_buy = 0
  counter = 0
  sell_day = 0
  array.length.times do
    first_element = array[0]
    best_profit = 0
    array.each_with_index do |num,index|
     profit = num - first_element
      if profit >= best_profit
        best_profit = profit
        sell_day = index + counter
      end
    end
    if best_profit >= besto_overall_profit
      besto_overall_profit = best_profit
      best_buy = counter
      best_sell = sell_day
    end
    array.shift
    counter += 1
end
  p "#{besto_overall_profit}, #{best_buy}, #{best_sell}"
end

stock_picker(stock_price_per_day)