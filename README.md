# Liatrio Modernize API

This is the Liatrio Modernize API, a Ruby on Rails application designed to provide a modernized API service.

## Prerequisites

- Ruby version: 3.4.2
- Rails version: 8.0.2
- PostgreSQL: 12 or higher

## Installing PostgreSQL on MacOS

Using Homebrew and Ruby:

1. Install Homebrew if you haven't already:

```sh
bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install PostgreSQL using Homebrew:

```sh
brew install postgresql
```

3. Start PostgreSQL service:

```sh
brew services start postgresql
```

4. Install the `pg` gem:

```sh
gem install pg
```

## Git Hooks (local)

To set up Git hooks locally, follow these steps:

1. Move the files from .github/hooks into your local repo .git/hooks folder.
2. Run the following commands from the root of the project:

```sh
   chmod +x .git/hooks/pre-commit
   chmod +x .git/hooks/pre-push
```

## Database Setup

1. Create the database:

```sh
rails db:create
```

2. Run database migrations:

```sh
rails db:migrate
```

3. Seed the database with initial data:

```sh
rails db:seed
```

## Running the Application

To start the application, run:

```sh
rails server # or, rails s
```

## Running the Test Suite

To run the test suite, execute:

```sh
rails test # or, rails t
```

## Running the Linter

To run the RuboCop linter, execute:

```sh
bundle exec rake lint:rubocop
```

## Deployment

1. App deployed using Heroku

## Additional Information

- **License:** This project is licensed under the MIT License - see the LICENSE file for details.
