# Before

web: bundle exec rails s -p $PORT
worker: ...
urgent_worker: ...
scheduler:  ...

# After

web: bundle exec rails s -p $PORT
worker: bundle exec rake worker
urgent_worker: bundle exec rake urgent_worker
scheduler:  bundle exec rake scheduler
