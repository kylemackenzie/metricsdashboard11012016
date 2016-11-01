current_valuation = 1
current_karma = 0

SCHEDULER.every '3s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(10)
  current_karma     = rand(2000000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: rand(10) })
end
