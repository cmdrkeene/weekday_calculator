Gem::Specification.new do |s|
  s.name = %q{weekday_calculator}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brandon Keene"]
  s.date = %q{2009-12-04}
  s.email = %q{brandon@cmdrkeene.net}
  s.files = ["lib/weekday_calculator.rb"]
  s.homepage = %q{http://github.com/cmdrkeene/weekday_calculator}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{nth-weekday calculation and every nth weekday calculation}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
