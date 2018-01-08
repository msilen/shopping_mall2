lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shopping_mall/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = 'shopping_mall'
  spec.version       = ShoppingMall::VERSION
  spec.authors       = ['Vincent Franco', 'David Freerksen']
  spec.homepage      = 'http://github.com/groundctrl/shopping_mall'
  spec.summary       = 'Multi-tenancy for Spree 3.x.x'
  spec.description   = spec.summary
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.1.0'

  spec.files       = Dir['{app,config,db,lib}/**/*',
                        'MIT-LICENSE',
                        'Rakefile',
                        'README.md']
  spec.test_files   = `git ls-files -- spec/*`.split("\n")
  spec.require_path = 'lib'
  spec.has_rdoc     = false
  spec.requirements << 'none'

  spec.add_dependency 'apartment', '~> 2.1.0'
  spec.add_dependency 'spree', '~> 3.4.4'

  spec.add_development_dependency 'ffaker', '~> 2.8.0'
  spec.add_development_dependency 'capybara', '~> 2.17.0'
  spec.add_development_dependency 'database_cleaner', '~> 1.6.2'
  spec.add_development_dependency 'poltergeist', '~> 1.17.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.7.2'
  spec.add_development_dependency 'factory_girl', '~> 4.9.0'
  spec.add_development_dependency 'sqlite3', '~> 1.3.13'
  spec.add_development_dependency 'simplecov', '~> 0.15.1'
  spec.add_development_dependency 'coffee-rails', '~> 4.2.2'
  spec.add_development_dependency 'sass-rails', '~> 5.0.7'
  spec.add_development_dependency 'guard-rspec', '~> 4.7.3'
  spec.add_development_dependency 'pry-byebug', '~> 3.5.1'
  spec.add_development_dependency 'pg', '~> 0.21.0'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1.2'
end
