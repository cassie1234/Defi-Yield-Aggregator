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
# Hash 7894
# Hash 6727
# Hash 9824
# Hash 7602
# Hash 2028
# Hash 3564
# Hash 6812
# Hash 7807
# Hash 4545
# Hash 3644
# Hash 4481
# Hash 5769
# Hash 2491
# Hash 4761
# Hash 1288
# Hash 4635
# Hash 4610
# Hash 9185
# Hash 2400
# Hash 6124
# Hash 7825
# Hash 5343
# Hash 6532
# Hash 4471
# Hash 2352
# Hash 4964
# Hash 3237
# Hash 4375
# Hash 5640
# Hash 2792
# Hash 5706
# Hash 6418
# Hash 4119
# Hash 4420
# Hash 7518
# Hash 9991
# Hash 5001
# Hash 3820
# Hash 4106
# Hash 4808
# Hash 8401
# Hash 3411
# Hash 8974
# Hash 5925
# Hash 5535
# Hash 7430
# Hash 2306
# Hash 8740
# Hash 3117
# Hash 3860
# Hash 2372
# Hash 3271
# Hash 8916
# Hash 3071
# Hash 8973
# Hash 6433
# Hash 5254
# Hash 1150
# Hash 2316
# Hash 6415
# Hash 5353
# Hash 3635
# Hash 7457
# Hash 2646
# Hash 4264
# Hash 8862
# Hash 7995
# Hash 3404
# Hash 7437
# Hash 1487
# Hash 9826
# Hash 4044
# Hash 5835
# Hash 4722
# Hash 9983
# Hash 6273
# Hash 1863
# Hash 8670
# Hash 1883
# Hash 1399
# Hash 2288
# Hash 7441
# Hash 9661
# Hash 5728
# Hash 2888
# Hash 3774
# Hash 7327
# Hash 3220
# Hash 1679
# Hash 8822
# Hash 4351
# Hash 2817
# Hash 2688
# Hash 7691
# Hash 5536