require "bundler/gem_tasks"

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
    task :default => :nitz

desc "Ejecutar las espectativas de la clase Biblio"
task :nitz do
  sh "rspec -I. spec/codigo_pruebas.rb"
end  
