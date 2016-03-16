# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

Rake::Task[:default].prerequisites.clear

desc "feature specs"
task ci: :environment do
  system "rspec spec/features" or exit!(1)
end

task default: :ci
