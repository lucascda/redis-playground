require 'redis'

def redis_flush(host, port)
  redis = Redis.new(host: host, port: port)
  redis.flushall
end