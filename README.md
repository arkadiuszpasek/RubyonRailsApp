# README

### Ruby version
* Ruby installed: 2.7.0
* Rails installed: 6.0.2.1

### System dependencies
* Mysql installed
### Configuration

Now save credentials to mysql
`EDITOR="nano" rails credentials:edit` # or any editor
```
development:
    mysql_username: name
    mysql_password: pwd
```

In database.yml config reference the credentials:
`username: <%= Rails.application.credentials.dig(:development, :mysql_username) %>`

When credentials are properly configured run `rake db:create`
then create posts model:
`rails g model post title:string intro:text reading_time:integer thumbnail_url:string content:text`
and run `rake db:migrate`
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
