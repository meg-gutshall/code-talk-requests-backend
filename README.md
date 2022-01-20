# Code Talks Topic Request Platform

This repo is the backend portion to my Code Talks Topic Request Platform. Below you'll find:

1. [Prerequisite technologies needed](#technology-prerequisites) with download instructions for each technology
    1. [Ruby](#ruby)
    2. [Rails](#rails)
    3. [Bundler](#bundler)
    4. [PostgreSQL](#postgresql)
2. [Installation](#web-app-installation)
3. [App usage instructions](#usage)
4. [Technologies used to build this app](#built-with)
5. [Contributing information](#contributing)
6. [Author information](#author)
7. [Acknowledgments](#acknowledgments)
8. [License information](#license)

See [the frontend repo][Code Talk Requests Frontend] for a more detailed `README.md` including [Web App Installation][Code Talk Requests Frontend -- Web App Installation] and [Usage][Code Talk Requests Frontend -- Usage].

## Technology Prerequisites

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

Code Talks uses [Rails] version 6.0.3. If you already have the dependencies (SQLite3, Node.js, and Yarn), Rails is super easy to install because it's packaged into a Ruby gem. Just write `gem install rails` in your terminal.

If you don't have Rails' dependencies, see the [Installing Rails] section of RailsGuides for a walkthrough of how to get setup.

### Bundler

Code Talks uses [Bundler] version 2.1.4 to manage the Ruby Gems packaged in the app. Installing Bundler is as simple as opening a new terminal window and typing `gem install bundler` and you're ready to go!

### PostgreSQL

The database for Code Talks is [PostgreSQL] version 12.3. [Visit PostgreSQL's official site][Postgres download] and select your operating system in order to download the right package. There's one option available for Windows users. As a Mac user, I originally used Homebrew as my download option, but after trying Postgres.app, I found it to be much more simple and user-friendly. There are plenty of options for whichever server type you prefer!

## Web App Installation

If you have all the requisite technologies for the [frontend][Code Talk Requests Frontend -- Built With] and [backend](#built-with) already installed, you can follow the directions in the [Web App Installation][Code Talk Requests Frontend -- Web App Installation] section of the frontend repo. If not, you may want to skip down to the [Technology Prerequisites](#technology-prerequisites) section of each repo first.

## Usage

See the Code Talk Requests Frontend repo for [usage instructions][Code Talk Requests Frontend -- Usage].

## Built With

- Language: [Ruby](#ruby)
- Framework: [Rails](#rails)
- ORM: [Active Record] - This is Rails's built-in Object Relational Mapping system
- Database: [PostgreSQL](#postgresql) - An open source object-relational database system
- Dependency manager: [Bundler](#bundler)

## Contributing

Issues and pull requests are welcome at [this repository][Code Talk Requests Backend]. This project as well as all other content on my GitHub are intended to be safe, welcoming, and open for collaboration. Users are expected to adhere to the [Contributor Covenant code of conduct] and those that do not will be reported and blocked. I got no time for that nonsense.

## Author

**[Meg Gutshall]**

Connect with me on... [GitHub], [LinkedIn], [Twitter], and [DEV]!

## Acknowledgments

- [Sushi Chanrai] and [Alice Balbuena] for helping me implement and debug my JWT authorization from back to front and back again
- [Ayana Zaire Cotton] for conducting an **amazing** step-by-step project build tutorial, being a wonderful instructor, and being an overall incredible person

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

[Code Talk Requests Backend]: https://github.com/meg-gutshall/code-talk-requests-backend
[Code Talk Requests Frontend]: https://github.com/meg-gutshall/code-talk-requests-frontend
[Code Talk Requests Frontend -- Built With]: https://github.com/meg-gutshall/code-talk-requests-frontend#built-with
[Code Talk Requests Frontend -- Web App Installation]: https://github.com/meg-gutshall/code-talk-requests-frontend#web-app-installation
[Code Talk Requests Frontend -- Usage]: https://github.com/meg-gutshall/code-talk-requests-frontend#usage

[RVM]: https://rvm.io/ "RVM"
[rbenv]: https://github.com/rbenv/rbenv "rbenv"
[rbenv script]: https://github.com/rbenv/rbenv-installer#rbenv-installer "rbenv script"
[ruby-build]: https://github.com/rbenv/ruby-build "ruby-build"
[Homebrew]: https://brew.sh/ "Homebrew"
[Postgres download]: https://www.postgresql.org/download/ "Postgres download"
[Bundler]: https://bundler.io/ "Bundler"
[Ruby]: https://www.ruby-lang.org/en/ "Ruby"
[Rails]: https://rubyonrails.org/ "Rails"
[Installing Rails]: https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails "Installing Rails"
[Active Record]: https://apidock.com/rails/v6.0.0/ActiveRecord/Base "Active Record"
[PostgreSQL]: https://www.postgresql.org/ "PostgreSQL"

[Contributor Covenant code of conduct]: https://www.contributor-covenant.org/version/2/0/code_of_conduct/ "Contributor Covenant code of conduct version 2.0"

[Meg Gutshall]: https://meghangutshall.com/ "Meg Gutshall's website"
[GitHub]: https://github.com/meg-gutshall "Meg Gutshall's GitHub profile"
[LinkedIn]: https://www.linkedin.com/in/meghan-gutshall/ "Meg Gutshall's LinkedIn profile"
[Twitter]: https://twitter.com/meg_gutshall "Meg Gutshall's Twitter profile"
[DEV]: https://dev.to/meg_gutshall "Meg Gutshall's DEV profile"
[Sushi Chanrai]: https://github.com/schanrai "Sushi Chanrai's GitHub profile"
[Alice Balbuena]: https://github.com/alicekb "Alice Balbuena's GitHub profile"
[Ayana Zaire Cotton]: https://github.com/AyanaZaire "Ayana Zaire Cotton's GitHub profile"
