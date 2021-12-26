# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "image_watermark_using_mini_magick"
  spec.version       = "0.0.0"
  spec.authors       = ["Fajarullah"]
  spec.email         = ["frullah12@gmail.com"]

  spec.summary       = ""
  # spec.description   = ""
  # spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # spec.metadata["allowed_push_host"] = ""

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = ""
  # spec.metadata["changelog_uri"] = ""

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end