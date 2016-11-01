SCHEDULER.every '5m', :first_in => 0 do |job|
    url = "http://mywebaddressgoeshere"
    puts url
    send_event('myiframe', url: url)
end
