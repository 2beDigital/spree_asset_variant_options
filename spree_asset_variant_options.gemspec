# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_asset_variant_options'
  s.version     = '3.0.0'
  s.summary     = 'Allow an image to belong to multiple Spree::Variant models'
  s.description = 'Spree makes it tedious to upload the same image across multiple variants. This gem solves the problem.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'jpdesigndev '
  s.homepage  = 'https://github.com/bonobos/spree_asset_variant_options'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree'

end
