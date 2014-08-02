Gem::Specification.new do |s|
  s.name        = 'ngrok-rails'
  s.version     = '0.0.0'
  s.authors     = ['wjordan']
  s.summary     = 'ngrok rack middleware'
  s.files       = %w(lib/ngrok-rails.rb lib/ngrok-rails/railtie.rb)
  s.license       = 'MIT'
  s.add_runtime_dependency 'spawnling', '~>2.1'
  s.add_development_dependency 'sinatra'
end
