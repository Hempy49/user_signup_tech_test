#User sign up tech test

## Specifications

Make a simple Rails application for accepting new user signups. No need to worry about
handling logins and sessions. We just want a form, which users can complete to create an
account.
The form should allow each user to provide the following information:
* Username (required)
* Password (required)
* Email address (required)
* Address
* Telephone number

Once submitted, the user’s details should be saved to a database.
After the user’s account has been created, send them an email welcoming them to the platform
and confirming their username.

## Approach

The project was written in Ruby on Rails following a TDD approach. I enjoyed learning more about action mailer, something I had not used before in rails.

## How to use
First clone this repo. Then:
```
bundle install
bin/rails db:create
bin/rails db:migrate

bundle exec rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:300
```
## Screenshots

User sign up form:
![Sign up form](https://user-images.githubusercontent.com/25139253/30595792-1f58f6b6-9d4a-11e7-8963-f72f7bf8ab58.png)
Rspec tests passing:
![rspec tests](https://user-images.githubusercontent.com/25139253/30595724-e3f2d376-9d49-11e7-8d94-d2c3ad4cc7d0.png)
Email sent successfully to new user:
![email sent](https://user-images.githubusercontent.com/25139253/30595761-0c432b14-9d4a-11e7-932c-bd8c5e9af705.png)
