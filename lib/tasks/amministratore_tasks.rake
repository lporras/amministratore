# Rake.application.remove_task('react_on_rails:assets:compile_environment')

task 'react_on_rails:assets:compile_environment' do
  path = File.join(Amministratore::Engine.root, 'client')
  sh "cd #{path} && #{ReactOnRails.configuration.build_production_command}"
end

# desc "Explaining what the task does"
# task :amministratore do
#   # Task goes here
# end
