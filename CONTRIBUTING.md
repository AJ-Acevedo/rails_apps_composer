# Contributing to rails_apps_composer

Looking to contribute something to rails_apps_composer? **Here's how you can help.**


### Reporting Issues

Reporting an [issue on Github](https://github.com/RailsApps/rails_apps_composer/issues) is one of the simplest ways to contribute. Reporting issues (and patching!) helps everyone!

When you generate an application, the application’s README.textile file will contain a [diagnostics report](http://railsapps.github.io/tutorial-rails-apps-composer.html#Diagnostics). Please include the diagnostics report when you create an issue on GitHub.


### Fork

Fork the project [on GitHub](https://github.com/RailsApps/rails_apps_composer.git) and check out
your copy.

```
$ git clone git@github.com:username/rails_apps_composer.git
$ cd rails_apps_composer
$ git remote add upstream git@github.com:RailsApps/rails_apps_composer.git
```


### Pull Requests

We love to receive your pull requests. Improvements, features, [recipes](http://railsapps.github.io/tutorial-rails-apps-composer.html#Anatomy), and bug fixes are all welcome.
You don't have to use a git branch if you're not skilled with git,
but if you can, we prefer it. Here's how to make a branch and submit a pull request.

```
$ git branch <name_of_new_branch>
$ git checkout <name_of_new_branch>
```

After you make your changes and test your gem, commit the changes.

```
$ git add .
$ git commit -m "Your commit message"
$ git push origin <name_of_new_branch>
```

Now it's time to [initiate the Pull Request](https://help.github.com/articles/using-pull-requests#initiating-the-pull-request)

For additional information, reference: [Hacking the Gem](http://railsapps.github.io/tutorial-rails-apps-composer.html#Hacking)


### Coding Standards

Please adhere to the coding conventions used throughout the project (indentation,
accurate comments, etc.).

Here is a great [ruby-style-guide](https://github.com/bbatsov/ruby-style-guide)