require "#{__dir__}/watcher"

watcher = Watcher.new
loop do
  watcher.permit
  sleep(60)
end



