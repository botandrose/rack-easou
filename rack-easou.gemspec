$:.push File.expand_path("../lib", __FILE__)

require "rack/easou/version"

Gem::Specification.new do |s|
  s.name        = "rack-easou"
  s.version     = Rack::Easou::VERSION
  s.authors     = ["Sunny Ripert", "Micah Geisel"]
  s.email       = ["sunny@sunfox.org", "originofstorms@gmail.com"]
  s.homepage    = "http://github.com/botandrose/rack-easou"
  s.summary     = "Handle invalid percent in encoding from requests in Rails"
  s.description = "Render 400 error whenever a request's %-encoding is malformed"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "rack-utf8_sanitizer"

  s.add_development_dependency 'rake'
end
