# SPORTS-STAT-TRACKER-BACKEND

Started the application by building the backend first. Created an API only rails application with a database setup using postgresql instead of the default SQLite by running

```
rails new sports-stat-tracker-backend --api --database=postgresql -T

```
'-T' was to eliminate all tests that were built in.

Then, I configured Rack Middleware and adjust the cors files while adding the rack-cors dependenc which will assists with JSON Web token transfers.

Next, I configured devise and added a few gem dependencies

``
gem 'devise'
gem 'devise-jwt'
gem 'fast-jsonapi'

``

run

``
bundle install 

``

to install dependencies and

``
rails g devise:install
``
to begin the devise package install

There are a few modification that I had to make in development files and for nav formats


Finally, I began to build my User model, which I will eventually build for authentication purposes with JWT 

``
rails g devise User

``

and run migrations 

``
rails db:create
rails db:migrate
``

***You must run rails db:create with postgresql in order to load your database into file structure


The remainder of this application was built using React at this repository

https://github.com/lsuman83/sports-stat-tracker-react-client

# SPORTS-STAT-TRACKER-REACT-CLIENT
