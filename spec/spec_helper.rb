require 'simplecov'
SimpleCov.start do
    add_filter "/spec/dummy/"
end

require 'rubygems'
require 'ammeter/init'
require 'factory_girl'
FactoryGirl.find_definitions

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "rails/generators/test_case"

# Loading more in this block will cause your tests to run faster. However,
# if you change any configuration or code from libraries loaded here, you'll
# need to restart spork for it take effect.

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
  config.include FactoryGirl::Syntax::Methods
end
