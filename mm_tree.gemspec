# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mm_tree}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["twoism"]
  s.date = %q{2009-12-18}
  s.description = %q{acts_as_tree port for MongoMapper}
  s.email = %q{signalstatic@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/mm_tree.rb",
     "mm_tree.gemspec",
     "test/schema.rb",
     "test/test_helper.rb",
     "test/traversal_test.rb",
     "test/tree_test.rb"
  ]
  s.homepage = %q{http://github.com/twoism/mm_tree}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{acts_as_tree port for MongoMapper}
  s.test_files = [
    "test/schema.rb",
     "test/test_helper.rb",
     "test/traversal_test.rb",
     "test/tree_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

