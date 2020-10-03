## Contributing

First off, thank you for considering contributing to Amministratore.

### Where do I go from here?

If you've noticed a bug or have a feature request, [make one][new issue]! It's
generally best if you get confirmation of your bug or approval for your feature
request this way before starting to code.

If you have a general question about Amministratore, you can post it on [Stack
Overflow], the issue tracker is only for bugs and feature requests.

### Fork & create a branch

If this is something you think you can fix, then [fork Amministratore] and create
a branch with a descriptive name.

A good branch name would be (where issue #325 is the ticket you're working on):

```sh
git checkout -b 325-add-japanese-translations
```

### Get the test suite running

Make sure you're using a recent ruby and have the `bundler` gem installed, at
least version `2.1.4`.

Now install the development dependencies:

```sh
bundle install
```

Then install javascript dependencies with [Yarn] (requires a current version of [Node.js]):

We recommend you the LTS version, but it's up to you.

```sh
bin/yarn install
```

To update javascript bundle run (add `-w` flag for watch mode):

```sh
bin/yarn build
```

Now you should be able to run the entire suite using:

```sh
bundle exec rspec spec
```

### Implement your fix or feature

At this point, you're ready to make your changes! Feel free to ask for help;
everyone is a beginner at first :smile_cat:

### View your changes in a Rails application

Amministratore is meant to be used by humans, not cucumbers. So make sure to take
a look at your changes in a browser.

To boot up a test Rails app follow these steps:

```sh
cd spec/dummy
gem install foreman # run it only one time
bundle install
bundle exec rake db:create && rake db:migrate
yarn install
bundle exec foreman start -f Procfile.dev
```

You should now be able to open <http://localhost:3000/> in your browser.

### Make a Pull Request

At this point, you should switch back to your master branch and make sure it's
up to date with Amministratore's master branch:

```sh
git remote add upstream git@github.com:lporras/amministratore.git
git checkout master
git pull upstream master
```

Then update your feature branch from your local copy of master, and push it!

```sh
git checkout 325-add-japanese-translations
git rebase master
git push --set-upstream origin 325-add-japanese-translations
```

Finally, go to GitHub and [make a Pull Request][] :D

### Keeping your Pull Request updated

If a maintainer asks you to "rebase" your PR, they're saying that a lot of code
has changed, and that you need to update your branch so it's easier to merge.

To learn more about rebasing in Git, there are a lot of [good][git rebasing]
[resources][interactive rebase] but here's the suggested workflow:

```sh
git checkout 325-add-japanese-translations
git pull --rebase upstream master
git push --force-with-lease 325-add-japanese-translations
```

### Merging a PR (maintainers only)

A PR can only be merged into master by a maintainer if:

* It is passing tests suit.
* It has been approved by at least one maintainer.
* It has no requested changes.
* It is up to date with current master.

Any maintainer is allowed to merge a PR if all of these conditions are
met.

### Shipping a release (maintainers only)

To be defined.

[Stack Overflow]: http://stackoverflow.com/questions/tagged/amministratore
[new issue]: https://github.com/lporras/amministratore/issues/new
[fork Amministratore]: https://help.github.com/articles/fork-a-repo
[make a pull request]: https://help.github.com/articles/creating-a-pull-request
[git rebasing]: http://git-scm.com/book/en/Git-Branching-Rebasing
[interactive rebase]: https://help.github.com/en/github/using-git/about-git-rebase
[shortcut reference links]: https://github.github.com/gfm/#shortcut-reference-link
[Yarn]: https://yarnpkg.com/en/docs/install
[Node.js]: https://nodejs.org/en/
