# Code Talks Topic Request Platform

This repo is the backend portion to my Code Talks Topic Request Platform. Below you'll find:

1. [Technologies used to build this app](#built-with)
2. [Installation instructions](#technology-installation) for each technology
  a. [Ruby](#ruby)
  b. [Rails](#rails)
  c. [PostgreSQL](#postgresql)
  d. [Bundler](#bundler)
3. [App usage instructions](#usage)
4. [Contributing information](#contributing)
5. [Author information](#authors)
6. [Acknowledgements](#acknowledgements)
7. [License information](#license)

See [the frontend repo][Code Talk Requests Frontend] for a more detailed `README.md`.

## Built With

- Language: [Ruby](#ruby)
- Framework: [Rails](#rails)
- ORM: [Active Record] - This is Rails's built-in Object Relational Mapping system
- Database: [PostgreSQL](#postgresql) - An open source object-relational database system
- Dependency manager: [Bundler](#bundler)

## Technology Installation

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

<!-- TODO: Rails install info goes here -->

### PostgreSQL

The database for Code Talks is [PostgreSQL] version 12.3. [Visit PostgreSQL's official site][Postgres download] and select your operating system in order to download the right package. There's one option available for Windows users. As a Mac user, I originally used Homebrew as my download option, but after trying Postgres.app, I found it to be much more simple and user-friendly. There are plenty of options for other server types, but I have no experience using any of them.

### Bundler

Code Talks uses [Bundler] version 2.1.4 to manage the Ruby Gems packaged in the app. Installing Bundler is as simple as opening a new terminal window and typing `gem install bundler` and you're ready to go!

## Usage

Fork [this repository](https://github.com/meg-gutshall/code-talk-requests-backend) from GitHub and clone your forked copy down to your computer. Open a new terminal window and `cd` into the `code-talk-requests-backend` root directory.

>List any other actions needed to be taken before starting up the server.

<!-- TODO: Change header below and check over directions. -->

**Steps for a Ruby on Rails app with PostgreSQL**
Create a new file by typing `touch .env` and input the following text into this file:

```bash
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

Issues and pull requests are welcome at [this repository](https://github.com/meg-gutshall/code-talk-requests-backend). This project as well as all other content on my GitHub are intended to be safe, welcoming, and open for collaboration. Users are expected to adhere to the [Contributor Covenant code of conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/) and those that do not will be reported and blocked. I got no time for that nonsense.

## Authors

**[Meg Gutshall](https://github.com/meg-gutshall/)**

## License

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
