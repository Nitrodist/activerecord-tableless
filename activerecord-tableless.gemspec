# -*- ruby -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Jarl Friis", "Kenneth Kalmer", "Michal Zima"]
  gem.email         = ["jarl@softace.dk"]
  gem.name          = 'activerecord-tableless'
  gem.summary       = %q{A library for implementing tableless ActiveRecord models}
  gem.description   = %q{ActiveRecord Tableless Models provides a simple mixin for creating models that are not bound to the database. This approach is mostly useful for capitalizing on the features ActiveRecord::Validation}
  gem.homepage      = "https://github.com/softace/activerecord-tableless"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.version       = "1.0.1"
  gem.has_rdoc      = true
  gem.extra_rdoc_files = %w( README CHANGELOG )
  gem.rdoc_options.concat ['--main',  'README']

  gem.require_paths = ["lib"]
  gem.platform      = Gem::Platform::RUBY

  gem.add_dependency("activerecord", ">=3.1")

  gem.add_development_dependency('bundler')
  gem.add_development_dependency('rake')
end
