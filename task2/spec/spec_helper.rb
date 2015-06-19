require 'bundler/setup'
require 'vcr'

$: << File.expand_path('../../lib', __FILE__)
require 'scraper'

VCR.configure do |c|
  c.cassette_library_dir = File.expand_path('../vcr', __FILE__)
  c.hook_into :webmock # or :fakeweb
  c.configure_rspec_metadata!
end
