require 'rubygems'        # if you use RubyGems
require 'daemons'

Daemons.run("#{__dir__}/watcher_process.rb")