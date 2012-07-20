require 'rubygems'
require 'rspec/core/rake_task'

# Spec::Rake::SpecTask.new(:spec) do |t|
#   t.spec_files = Dir.glob('spec/**/*_spec.rb')
#   t.spec_opts << '--format specdoc'
#   t.rcov = true
# end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end
