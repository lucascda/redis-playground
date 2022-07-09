require 'rails_helper'
require 'redis'

describe 'try to connect to redis' do
  it 'and it does, succesfully' do
    # Connects to localhost:6379 by default   
    redis = Redis.new    
    begin
      result = redis.ping
      
    rescue StandardError => e
      e.inspect
      e.message      
    end

    expect(result).to eq 'PONG'
  end

  
end