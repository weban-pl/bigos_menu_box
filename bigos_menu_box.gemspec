$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bigos_menu_box/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bigos_menu_box"
  s.version     = BigosMenuBox::VERSION
  s.authors     = ["Artur Kremens"]
  s.email       = ["kremenso@o2.pl"]
  s.homepage    = "http://www.weban.com.pl"
  s.summary     = "Restaurant menu box for bigos cms system."
  s.description = "Restaurant menu module"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "simple_form"
  s.add_dependency "jquery-rails"
  s.add_dependency "cocoon"
end
