# URL Shortening Service
------
A RESTful Api to convert long URLs into short ones. Application uses Rails at back end and AngiularJS as front end.

**Overview** 

1. Add long URLs (POST request)
2. Get short addresses (Response to POST request)
3. Click on short address (GET request to short address)
4. Redirect to the POSTed URL

**Installation** 
===

**Clone Repo**

Clone or download the repository.
```git
  git clone https://github.com/kzq/url-shortener.git url-shortener   
```

**Database Setup**

Change database user details in database.yml or create new one as follows:
```postgresql
  create user urlshortener createdb createuser login password 'dbpass';
```

**Bower Setup**

First install Node.js if you don't have already.

**Install Bower**

```node
  npm install -g bower
```

**Rails Setup**

```rails
  #cd to rails application directory

  bundle install
  
  bundle exec rake bower:install 
```

**Create databases and run migrations**

```rails
  bundle exec rake db:create

  bundle exec rake db:migrate
```

**Run Server**

```rails
  rails server -e development -p 3000  -P tmp/pids/3000.pid
```
