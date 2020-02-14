# README

### Ruby version
* Ruby installed: 2.7.0
* Rails installed: 6.0.2.1

### System dependencies
* Mysql installed
### Configuration
Log in mysql and `CREATE DATABASE myapp_db;`

Now save credentials to mysql
`EDITOR="nano" rails credentials:edit` # or any editor
```
development:
    mysql_username: name
    mysql_password: pwd
```

In database.yml config:
`username: <%= Rails.application.credentials.dig(:development, :mysql_username) %>`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
