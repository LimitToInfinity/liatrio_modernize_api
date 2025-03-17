# Liatrio Modernize API

A modern Ruby on Rails API service designed to provide robust and scalable backend functionality.

## 🚀 Quick Start

```sh
# Clone the repository
git clone https://github.com/LimitToInfinity/liatrio_modernize_api.git
cd liatrio_modernize_api

# Install dependencies
bundle install

# Set up database - PostgreSQL required, instructions below
rails db:{create,migrate,seed}

# Start the server
rails server # rails s
```

## 🛠 Prerequisites

- Ruby 3.4.2
- Rails 8.0.2
- PostgreSQL 12+

## 📦 Installation

### PostgreSQL Setup (MacOS)

```sh
# Install via Homebrew
brew install postgresql

# Start PostgreSQL service
brew services start postgresql

# Install pg gem
gem install pg
```

### Application Setup

1. Install dependencies:

```sh
bundle install
```

2. Set up environment variables:

```sh
cp .env.example .env  # Create your env file
# Edit .env with your configuration
```

3. Database setup:

```sh
rails db:create      # Create database
rails db:migrate     # Run migrations
rails db:seed       # Seed initial data
```

## 🔧 Development

### Git Hooks

Set up local Git hooks:

```sh
# Copy hooks to local git folder
cp .github/hooks/* .git/hooks/

# Make hooks executable
chmod +x .git/hooks/pre-commit
chmod +x .git/hooks/pre-push
```

### Running Tests

```sh
rails test                    # Run all tests
rails test:system            # Run system tests
rails test:controllers       # Run controller tests
```

### Code Quality

```sh
bundle exec rake lint:rubocop  # Run RuboCop linter
bundle exec brakeman          # Run security analysis
bundle exec bundle audit      # Check for dependency vulnerabilities
```

## 🚀 Deployment

The application is deployed on Heroku. For deployment:

1. Ensure you have Heroku CLI installed
2. Configure your Heroku remote
3. Deploy using:

```sh
git push heroku main
```

## 📚 API Documentation

API documentation is available at `/api/docs` when running the server locally.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

For support and questions, please open an issue or contact the development team.
