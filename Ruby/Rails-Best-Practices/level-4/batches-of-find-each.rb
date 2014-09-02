# After

Tweet.find_each(:batch_size => 5) do |tweet|
  puts tweet.status
end
