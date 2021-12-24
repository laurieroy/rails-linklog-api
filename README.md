# Rubyflow API

This is a codealong to see how to properly make a TDD API using rails, RSpec and FactoryBot. This was built as a [code along](https://www.udemy.com/course/ruby-on-rails-api-the-complete-guide) with Sebastian Wilgosz, making an API similar to RubyFlow. The course is complicated by being recorded over serveral versions of the course, and supporting gems. The error handler did not work with the upgraded error obj, so I am rebuilding the project more in line with how he built it so see if that flow goes easier. I'll come back around and work on the errors later.

GEMS Used
- rspec-rails
- factory_bot_rails
- jsonapi-serializer
- jsom-pagination, which is wrapper for pagy
- pagy 
- jsonapi_errors_handler, which was developed by the instructor. However it hasn't been upgraded to work w/6.1, so to follow along with the course, I'll build in 6.0 and come back to this at some point.


Ruby 2.7.2 |
Rails 6.0.4.4 |
PG 
RSpec 3.10 |