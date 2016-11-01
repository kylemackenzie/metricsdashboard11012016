SCHEDULER.every '5m', :first_in => 0 do |job|
    url = "https://twitter.com/realDonaldTrump?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
    puts url
    send_event('myiframe', url: url)
end
