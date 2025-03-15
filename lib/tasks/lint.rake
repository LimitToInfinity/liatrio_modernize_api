namespace :lint do
    desc "Run RuboCop"
    task :rubocop do
        sh "bundle exec rubocop"
    end
end
