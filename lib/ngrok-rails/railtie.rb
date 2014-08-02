module NgrokRails
  class Railtie < Rails::Railtie
    initializer 'ngrok-rails.insert_middleware' do |app|
      require 'rails/commands/server'
      unless defined?(Rails::Console)
        app.config.middleware.use 'NgrokRails::Middleware',
                                  port: Rails::Server.new.options[:Port],
                                  subdomain: "#{ENV['USER']}.#{Rails.application.class.parent_name.underscore.dasherize}"
      end
    end
  end
end
