# Blog City  
[![Build Status](https://travis-ci.com/sdmalek44/blog_city.svg?branch=master)](https://travis-ci.com/sdmalek44/blog_city)
[![Maintainability](https://api.codeclimate.com/v1/badges/45959ba8bcab2931e46f/maintainability)](https://codeclimate.com/github/sdmalek44/blog_city/maintainability)

Blog City was created as a personalized blog website. A blogger can log in as an admin and post articles for default users toto see. A user can also click on a category to see all blogs in that category. The website also allows users to register and leave comments on a blog. The admin has the ability to create edit or delete blogs, categories, and comments while a regular user only has the ability to edit/delete their own comment. This project has given me a chance to assign different levels of permissions to users through namespacing and private authentication methods. This project also helped increase my skills normalizing data through table relationships in postgreSQL.

![screen shot 2018-09-18 at 10 37 29 pm](https://user-images.githubusercontent.com/30483194/46432616-e8da7a00-c70b-11e8-890c-5118b9c47c33.png)

## Visit Website

https://blog-city.herokuapp.com/

## Setup Locally

```
(clone this directory)
$ git clone https://github.com/sdmalek44/blog_city.git
$ cd blog_city
$ bundle install
$ rails s
(go to localhost:3000 in browser)
```

## Run Tests

```
(clone this directory)
$ git clone https://github.com/sdmalek44/blog_city.git
$ cd blog_city
$ bundle install
$ rspec
```
