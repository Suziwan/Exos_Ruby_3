def is_multiple_of_3_or_5?(current_number)
  if current_number.to_i % 3 == 0 or current_number.to_i % 5 == 0
    return true
  else
    return false
  end
end

def sum_of_3_or_5_multiples(final_number)
  if !final_number.is_a? Integer or final_number < 0 or final_number == nil 
    return nil
  end

  final_sum = 0
  for i in 0...final_number
    if is_multiple_of_3_or_5?(i)
      final_sum += i
    end
    i += 1
  end

  return final_sum
end
