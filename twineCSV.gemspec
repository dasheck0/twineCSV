# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twineCSV/version'

Gem::Specification.new do |spec|
  spec.name = "twineCSV"
  spec.version = TwineCSV::VERSION
  spec.authors = ["Stefan Neidig"]
  spec.email = ["s.neidig@appcom-interactive.de"]

  spec.summary = %q{twineCSV converts your twine localisation file to CSV and vice versa.}
  spec.description = %q{With twineCSV you can convert your localisation files to csv, so that others can edit them via Excel. After exporting it back to csv you can convert it to the twine format again.}
  spec.homepage = "https://github.com/dasheck0/twineCSV"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = Dir["{bin,lib}/**/*", "LICENSE", "README.md"]
  spec.test_files = Dir["spec/**/*"]
  spec.executables = ['twineCSV']
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('commander')
  spec.add_runtime_dependency('rubyXL', '3.3.29')

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
