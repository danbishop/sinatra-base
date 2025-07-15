sudo apt install ruby build-essential libssl-dev

[TBD Decide how I want to actually install bundler]: #

sudo gem install bundler

bundle config set --local path vendor/bundle

bundle install

bundle exec ruby app.rb