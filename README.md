# Code Talks Topic Request Platform

## Description

This repo is the backend portion to my Code Talks Topic Request Platform. Below you'll find:

- TODO: Add list items

See [the frontend repo][Code Talk Requests Frontend] for a more detailed `README.md`.

## Table of Contents

>Depending on how long the `README` is, add in a ToC or even abstract some sections away to different markdown files (i.e. `CONTRIBUTING.md`, `USAGE.md`, etc.).

## Built With

- Language: [Ruby](#ruby)
- Framework: [Rails](#rails)
- ORM: [Active Record] - This is Rails's built-in Object Relational Mapping system
- Database: [PostgreSQL](#postgresql) - An open source object-relational database system
- Dependency manager: [Bundler](#bundler)

## Prerequisites

### Ruby

Code Talks uses [Ruby] version 2.7.0. In my opinion, the best way to install Ruby is by using a Ruby version management system. The two most popular tools for this are [RVM] and [rbenv]. I've used both and have found rbenv to be more well-documented and easier to navigate than RVM but the ultimate choice is yours.

Since I use rbenv, I'm going to walk you through that installation. (_**NOTE:** If you decide to install rbenv and you used to use RVM, you must remove all RVM files or rbenv will **not** work!_)

<details>
  <summary>For Mac Users</summary>

  If you haven't done so already, download **[Homebrew]**. It's an amazing macOS package manager that's built with Ruby. Just paste the following script in a new terminal window:

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

  It will run through the installation, and explain the steps the script is taking along the way.

  Once Homebrew is installed (or if you already had it installed, you smarty pants!), it's time to install rbenv. Open a new terminal window running `bash` or `zsh` and `cd` into your home path (i.e. `Users/yourname/`). Now type `brew install rbenv` _*Note: This command also installs `ruby-build`, so you'll be ready to install other Ruby versions out of the box._ Once rbenv is done installing, type `rbenv init` to begin the shell integration setup.

  Restart your terminal for the installation changes to take effect. Make sure your setup is correct by running [the `rbenv-doctor` script][rbenv script] below:

  ```bash
  curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
  ```

  **NOW we install RUBY!**

  In your terminal, type `rbenv install 2.7.0` to download the version of Ruby you'll need to run Code Talks.

  Once it's done installing, navigate to the Code Talks directory and type `rbenv local 2.7.0` to set your local environment's Ruby version. Then type `rbenv rehash`.
</details>

<details>
  <summary>For Windows and Linux Users</summary>

  To install rbenv on your system, open up a new window in your terminal and run [the `rbenv-installer` script][rbenv script] below:

  ```bash
  curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
  ```

  It will either install rbenv on your system or update your pre-existing version of rbenv, located under `~/.rbenv`. Additionally, [ruby-build] is also installed if rbenv install is not already available.

  Restart your terminal for the installation changes to take effect. Make sure your setup is correct by running [the `rbenv-doctor` script][rbenv script] below:

  ```bash
  curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
  ```

  **NOW we install RUBY!**

  In your terminal, type `rbenv install 2.7.0` to download the version of Ruby you'll need to run Code Talks.

  Once it's done installing, navigate to the Code Talks directory and type `rbenv local 2.7.0` to set your local environment's Ruby version. Then type `rbenv rehash`.
</details>

### Rails

Code Talks uses [Rails] version 6.0.3.

TODO: Rails install info goes here

### PostgreSQL

The database for Code Talks is [PostgreSQL] version 12.3. [Visit PostgreSQL's official site][Postgres download] and select your operating system in order to download the right package. There's one option available for Windows users. As a Mac user, I originally used Homebrew as my download option, but after trying Postgres.app, I found it to be much more simple and user-friendly. There are plenty of options for other server types, but I have no experience using any of them.

### Bundler

Code Talks uses [Bundler] version 2.1.4 to manage the Ruby Gems packaged in the app. Installing Bundler is as simple as opening a new terminal window and typing `gem install bundler` and you're ready to go!

## Installation

Fork [this repository](https://github.com/meg-gutshall/code-talk-requests-backend) from GitHub and clone your forked copy down to your computer. Open a new terminal window and `cd` into the `code-talk-requests-backend` root directory.

>List any other actions needed to be taken before starting up the server.

TODO: Change header below and check over directions.

**Steps for a Ruby on Rails app with PostgreSQL**
Create a new file by typing `touch .env` and input the following text into this file:

```
POSTGRES_USER=YOUR_USERNAME
POSTGRES_PASSWORD=YOUR_PASSWORD
POSTGRES_HOST='localhost'
POSTGRES_DB='[repo-name]'
POSTGRES_TEST_DB='[repo-name]_test'
```

>Redo commented out paragraph below. This should use the pg username and password credentials, not making up your own for each app.

<!-- Replace `YOUR_USERNAME` with your computer's username—the name used in your terminal's root path (`$PATH`), or what you see when you type `PWD` in your terminal (i.e. `Users/yourname/`)—in single quotes and `YOUR_PASSWORD` with whatever you want it to be, again in single quotes. -->

Type `bundle install` into the terminal to load all of the Ruby Gems and dependencies into your app. Start up the PostgreSQL server and type `rails db:setup` into the terminal. This allows PostgreSQL to create two new databases (development and test) using the `.env` file you just created in the [App Name] app (in addition to pre-existing configurations). Next, type `rails db:migrate`. This step runs the table migrations in the app, which gives the database instructions on what kind of data it should look to receive and to which models and attributes the data corresponds.

To start up the Rails server, which is in charge of rendering your app on the web, therefore allowing users to interact with it, type `rails s` in the terminal. You should now be able to open up a new browser window and navigate to [http://localhost:3000/](http://localhost:3000/) and see the [App Name] homepage displayed. From there, either log in or sign up and have fun!

When you're done, just type `Ctrl + C` in the terminal to stop your Rails session and remember to also shut down your PostgreSQL server. If you'd like to reset the database to delete any objects you've created and start over fresh, type `rails db:reset` into the terminal.

## API Reference/Documentation

>Depending on the size of the project, if it is small and simple enough the reference docs can be added to the `README`. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

<!-- Explain how to run the automated tests for this system -->

### End to End Tests

<!-- Explain what these tests test and why

```
Give an example
``` -->

### Coding Style Tests

<!-- Explain what these tests test and why

```
Give an example
``` -->

## Deployment

<!-- Add additional notes about how to deploy this on a live system -->

## Usage

>End with an example of getting some seed data out of the system or using it for a demo. Add screenshots, video links, and/or GIFs in this section to make your usage instructions as clear as possible to the user.

<!-- End with an example of getting some data out of the system or using it for a little demo -->

<!-- **If I have a demo video**
I recorded a quick demo video (below) on how to use [App Name].

[![[App Name] demo video](https://img.youtube.com/vi/[link to YouTube video]/0.jpg)](https://youtu.be/[link to YouTube video]) -->

<!-- **Steps for a Ruby on Rails app with PostgreSQL**
I also created a seed file which holds randomized data to use specifically for app development and testing purposes. If you'd like to explore [App Name] with data preloaded into the database, type `rails db:seed` in the terminal and log in using the following credentials:

```
[credentials here]
``` -->

## Contributing

>Add more detailed instructions for open-source projects. It's a good idea to include a code of conduct as well as resource links as to where absolute beginners can go to learn how to contribute to open source. [Here's a great place to start.][Open Source Guides]
>I personally like the Contributor Covenant and use the below statement as my default. I intend to expand on it once I create an open-source project truly worthy of others' contributions.

Issues and pull requests are welcome at [<!-- link to repo -->](<!-- link to repo -->). This project as well as all other content on my GitHub are intended to be safe, welcoming, and open for collaboration. Users are expected to adhere to the [Contributor Covenant code of conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct) and those that do not will be reported and blocked. I got no time for that nonsense.

## Authors

>Include your name and any links to your social media, contact info, or websites that you'd like. Don't forget to s/o your contributors here too!

**[Meg Gutshall](https://github.com/meg-gutshall/)**

See also the list of [contributors](#contributors) who participated in this project.

## Contributors

>Add a list of contributors here. You may want to feature some who have really stood out.

## Acknowledgments

>- Hat tip to anyone whose code was used
>- Inspiration
>- Anything else that seems useful

## License

>Include your license here. This is an absolute **must** as some users require that all services they include in their project have a license that matches their own. The MIT License is GitHub's recommendation and probably the most common one you'll see in repos, but there are [other options available][Choose an Open Source License]—copy*left*, anybody?—and that's not even an exhaustive list, just the most popular licenses on GitHub.

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

[Code Talk Requests Frontend]: https://github.com/meg-gutshall/code-talk-requests-frontend

[RVM]: https://rvm.io/
[rbenv]: https://github.com/rbenv/rbenv
[rbenv script]: https://github.com/rbenv/rbenv-installer#rbenv-installer
[ruby-build]: https://github.com/rbenv/ruby-build
[Homebrew]: https://brew.sh/
[Postgres download]: https://www.postgresql.org/download/
[Bundler]: https://bundler.io/
[Ruby]: https://www.ruby-lang.org/en/
[Rails]: https://rubyonrails.org/
[Active Record]: https://apidock.com/rails/v6.0.0/ActiveRecord/Base
[PostgreSQL]: https://www.postgresql.org/
