require 'coveralls'
Coveralls.wear!

#require 'rspec-api'
require 'ostruct'
require 'active_support/core_ext/integer/time'

Dir['./spec/support/**/*'].each {|f| require f}

RSpec.configure do |config|
  config.order = 'random'
  config.treat_symbols_as_metadata_keys_with_true_values = true
end