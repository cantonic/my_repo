
require 'rails_helper'
require 'rspec/rails'
require 'turnip/capybara'
require 'factory_girl_rails'
require 'site_prism'
require 'pry'
require 'rautomation'

Capybara.register_driver :selenium do |app|  
   http_client = Selenium::WebDriver::Remote::Http::Default.new
   http_client.timeout = 300
   Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => http_client)  
end

 Capybara.default_driver = :selenium

Dir.glob("spec/features/steps/testrails_step.rb") { |f| load f, true }

["sections", "pages", "create_view", "view_sort"].each do |type|
      Dir["#{File.dirname(__FILE__)}/support_site_prism/**/#{type}/*.rb"].each {|file| require file }
    end


RSpec.configure do |config|
	
    config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

   config.mock_with :rspec do |mocks|
     mocks.verify_partial_doubles = true
  end

end
