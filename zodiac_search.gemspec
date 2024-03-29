
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zodiac_search/version"

Gem::Specification.new do |spec|
  spec.name          = "zodiac_search"
  spec.version       = ZodiacSearch::VERSION
  spec.authors       = ["blitzparanoia"]
  spec.email         = ["bluemilk44@gmail.com"]

  spec.summary       = %q{todo: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{todo: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/blitzparanoia/zodiac_search"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "todo: Set to 'http://mygemserver.com'"
#three lines below were causeing the console file to crash and not load
  #  spec.metadata["homepage_uri"] = spec.homepage
  #  spec.metadata["source_code_uri"] = "todo: Put your gem's public repo URL here."
  #  spec.metadata["changelog_uri"] = "todo: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
#added nokogiri and pry to dependency
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
