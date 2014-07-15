require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module APIMailer
  class Application < Rails::Application

    EMAIL_CONFIG = YAML.load_file("#{APIMailer::Application.root}/config/secrets.yml")
    ENV['MANDRILL_USERNAME'] ||= EMAIL_CONFIG['MANDRILL_USERNAME']
    ENV['MANDRILL_PASSWORD'] ||= EMAIL_CONFIG['MANDRILL_PASSWORD']

    config.action_mailer.smtp_settings = {
      :address              => "smtp.mandrillapp.com",
      :port                 => 587,
      :domain               => 'seanders.me',
      :user_name            => ENV['MANDRILL_USERNAME'],
      :password             => ENV['MANDRILL_PASSWORD'],
      :authentication       => 'plain',
      :enable_starttls_auto => true
    }
  end
end
