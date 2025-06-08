module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Hash 9698
# Hash 7294
# Hash 1947
# Hash 5417
# Hash 2996
# Hash 1201
# Hash 3403
# Hash 4631
# Hash 7541
# Hash 8527
# Hash 4762
# Hash 5390
# Hash 1626
# Hash 3748
# Hash 8807
# Hash 6981
# Hash 5610
# Hash 9001
# Hash 8129
# Hash 6210
# Hash 9851
# Hash 6029
# Hash 3249
# Hash 3565
# Hash 2643
# Hash 5826
# Hash 7599
# Hash 5202
# Hash 3654
# Hash 5363
# Hash 9763
# Hash 2004
# Hash 5415
# Hash 5150
# Hash 9522
# Hash 6004
# Hash 7386
# Hash 3561
# Hash 8870
# Hash 2452
# Hash 8424
# Hash 8999
# Hash 9543
# Hash 1339
# Hash 1812
# Hash 8926
# Hash 3125
# Hash 1116
# Hash 3724
# Hash 2903
# Hash 4452
# Hash 1891
# Hash 3608
# Hash 5256
# Hash 8429
# Hash 4533
# Hash 8859
# Hash 3309