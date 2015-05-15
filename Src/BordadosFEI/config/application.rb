require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BordadosFEI
  class Application < Rails::Application
  	config.action_view.field_error_proc = Proc.new { |html_tag, instance| "<div class=\"has-error\"> #{html_tag}</div>".html_safe }
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'es-MX'
  end
end
