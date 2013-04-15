# Application template recipe for the rails_apps_composer. Change the recipe here:
# https://github.com/RailsApps/rails_apps_composer/blob/master/recipes/example.rb

before_config do
  # Code here is run before any configuration prompts.
  say_wizard "recipe running before configuration"
end

if config['space_test']
  say_wizard "running a space test"
  test_count = config['test_count']
  say_wizard "will run the test #{test_count} times"
  say_wizard "will run the test in #{config['orbit']} orbit"
  unless config['mars_test']
    say_wizard "Mars test not available"
  end
  # the @config@ hash is only available to the recipe
  # the @prefs{}@ hash is available to all the recipes
  case config['orbit']
    when 'leo'
      prefs[:test_orbit] = 'leo'
    when 'spy'
      prefs[:test_orbit] = 'spy'
    when 'gps'
      prefs[:test_orbit] = 'gps'
  end
end

after_bundler do
  # Code here is run after Bundler installs all the gems for the project.
  # Use this section to run generators and rake tasks.
  # Download any files from a repository for models, controllers, views, and routes.
  say_wizard "recipe running after 'bundle install'"
end

after_everything do
  # This block is run after the 'after_bundler' block.
  # Use this section to finalize the application.
  # Run database migrations or make a final git commit.
  say_wizard "recipe running after everything"
end

# A recipe has two parts: the Ruby code and YAML matter that comes after a blank line with the __END__ keyword.

__END__

name: synculus
description: "Create a Synculus app"
author: AJ Acevedo

category: apps

config:
  - space_test:
      type: boolean
      prompt: Do you want to test your application in space?
  - mars_test:
      type: boolean
      prompt: Do you also want to test your application on Mars?
      if: space_test
      if_recipe: mars_lander
  - test_count:
      type: string
      prompt: How many times would you like to repeat the test?
      if: space_test
  - orbit:
      type: multiple_choice
      prompt: "What orbit do you want?"
      choices: [ [Low Earth orbit, leo], [Sun-synchronous, spy], [Geostationary, gps] ]
      if: space_test
