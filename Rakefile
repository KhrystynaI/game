desc 'Start a pry console'
task :console do
  require 'pry'
  require './game'
  Pry.start
end

desc 'start spec for all drawers'
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir['./drawers/*_spec.rb']
   end
  task :default => :spec
end



#task :test do
 #FileList['./*drawer_spec.rb']
