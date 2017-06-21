require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CTSRails
  class Application < Rails::Application
   # config.generators do |g|
     # g.orm             :active_record
    #  g.template_engine :erb
     # g.test_framework  :test_unit, fixture: false
     # g.stylesheets     false
     # g.javascripts     true
   # end
  end
end
