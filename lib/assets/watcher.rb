require 'logger'
require 'redis'
require 'date'
require 'audite'

class Watcher
  def initialize
    @logger = Logger.new("#{__dir__}/../../log/watcher.log")
    @logger.level = Logger::INFO
    @player = Audite.new

    @player.events.on(:complete, &method(:player_complete))
    # @player.events.on(:position_change, &method(:position_change))

    @redis = Redis.new

    log('Watcher created')
  end

  def log(value)
    @logger.info(value)
  end

  def permit
    date = @redis.get('wmplayer:last_date')
    to_battle if (date != Date.today.to_s) #and (Time.now.hour == 9)
  end

  def to_battle
    log('Started to battle')
    @redis.set('wmplayer:last_date', Date.today.to_s)
    @player.stop_stream
    @player.load("#{__dir__}/../../vendor/mp3/to_battle.mp3")
    @player.start_stream
  end

  def player_complete
    log('player_complete')
  end
 
  # def position_change(pos)
  #   log("POSITION: #{pos} seconds  level #{@player.level}")
  # end
end
