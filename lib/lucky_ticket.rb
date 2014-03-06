def lucky_ticket(ticket_number) 
  half_length = (ticket_number.length/2).floor
  ticket_front = ticket_number.slice(0, half_length).split("")
  ticket_back = ticket_number.slice(-half_length, half_length).split("")

  if (/\D/ =~ ticket_number) != nil || ticket_number == ""
    return "oops, something went wrong"
  end

  front_sum = 0
  ticket_front.each do |integer|
    front_sum += integer.to_i
  end

  back_sum = 0
  ticket_back.each do |integer|
    back_sum += integer.to_i
  end

  front_sum == back_sum
end
