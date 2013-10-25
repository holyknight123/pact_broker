# Remember everything in this file will be loaded by Rake, don't make it too heavy...

$LOAD_PATH << File.expand_path(File.dirname(__FILE__) + '/../lib')

# Default environment
# Be aware that rake loads this boot file, so any attempt to change RACK_ENV by
# setting ENV['RACK_ENV'] after that (eg. in spec_helper) will not work.
RACK_ENV = ENV['RACK_ENV'] || 'development' unless defined? RACK_ENV

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.join(App.root_path, 'Gemfile')
if File.exists?(ENV['BUNDLE_GEMFILE'])
  require 'bundler/setup'
  Bundler.require
end

# Load Stencil
require 'pact_broker'