desc 'Assert that dependencies are installed'
task 'check_depends' do
  Publication::Dependencies.satisfied?
end

desc 'Install necessary dependencies'
task 'get_depends' do
  Publication::Dependencies.satisfy
end
