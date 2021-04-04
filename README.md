# Writing Better Forms
 
Forms are the unsung hero of a web app. Without them, most of our sites wouldn't have any data or even users. But we don't talk about forms that much, other than to say that building forms is hard. We want our forms to look nice and be useful, but sometimes that feels impossible. Join me for a refresher course on forms. We'll walk through creating three types of forms, from basic to advanced. Along the way I'll teach you some tips and tricks to create forms that delight users without frustrating your developers. And it's all vanilla Rails and JS as well - no extra DSL or libraries required.

During the workshop, we'll be taking on the role of a full-stack developer at Campfire, a web app that makes it easy for people to start, join, and participate in book clubs.  As part of our work, we're tasked to build a basic contact form that representatives from publishing houses can use to indicate that they want to import their catalog into the app.  Upon submission, the data from the form will be used to populate an email sent to a co-worker at Campfire.

As we go along, we'll have the chance to learn and review how we create forms on the front-end, including topics such as accessibility techniques for forms, best practices for user experience for forms, and client-side data validation.  We'll also have the chance to learn how we create handle forms on the back-end, such as providing data for input options and strong parameters.  It's expected that you'll have some basic experience with HTML, CSS, JS, Ruby, and Rails prior to the workshop.

Writing Better Forms is originally presented as part of RailsConf 2021, on April 12, 2021 at 1:00 PM EDT.  You can learn more about RailsConf, check out the schedule, and register by visiting [RailsConf 2021](railsconfig.org/).

## Prerequisites

As noted above, this workshop assumes that you have some basic experience with HTML, CSS, JS, Ruby and Rails.  Completing a beginner's tutorial that covers those topics should be enough for you to feel comfortable with what we'll discuss.  

During the workshop, you should feel free to follow along by making changes to a locally running version of the codebase. While this isn't required, I highly recommend that you do so so that you can create your own working example of some of the best practices surrounding forms.  

I would encourage you to clone the codebase well in advance of the workshop and ensure that you are able to run the application, particularly if you choose to use the provided Dockerfile.  And although it is unlikely that there will be substantial changes in the last days prior to the workshop, I would also advise you to pull the latest version from Github the morning of the workshop as well.


## Getting Ready

As stated above, you're encouraged to follow along during the workshop by making changes to a locally running version of the codebase.  You can choose to run the application locally within their system directly or by using the provided Dockerfile, as discussed in more detail below.  

## Setup - Docker and Local
Before installing and configuring the codebase, ensure that you have the following items installed on your computer (with links for more info):
- [Git](https://git-scm.com/downloads)
- [Ruby v2.7.2](https://www.ruby-lang.org/en/downloads/)
- [Rails v6.1.3.1](http://rubyonrails.org/)
- [Bundler v2.1.4](https://bundler.io/)

You will also need to define the various environment variables we use throughout the application.  Open a `env` file:
```
$ touch .env
```

Add the following values to the file:
```
DATABASE_USER=campfire
DATABASE_PASSWORD=password
DATABASE_HOST=database
REDIS_HOST=redis
```

Finally, let's update our `init.sql` script to use the same password as the one you listed in `.env`:
```
CREATE USER campfire WITH PASSWORD 'password';
```

## Setup - Docker Only
If you choose to run the application locally using Docker, note that you will need to have Docker Desktop running locally as well.

First, let's start the app with the containers running in the background:
```
docker-compose up -d
```

Next, you'll create and seed your database and run migrations on it with the following command:
```
$ docker-compose exec app bundle exec rails db:setup db:migrate db:seed
```

Now you're all set!  Navigating to `localhost:3000` in your browser should lead you to the homepage.

## Setup - Local Only
If you choose to run the application locally without using Docker, there are a few more steps involved.

You'll need to ensure that you have Postgres, NodeJS and Redis installed and running locally:

- [PostGreSQL v13.1](https://www.postgresql.org/)
- [Node v14.16.0](https://nodejs.org/en/)
- [Redis v5.0.7](https://redis.io/)

First, we'll create our database user using the `init.sql` in the following command:
```
$ psql postgres -f init.sql
```

Next, we'll run Bundler and Yarn to set up our dependencies:
```
$ bundle install && yarn install
```

Then, you'll create and seed your database and run migrations on it with the following command:
```
$ rails db:setup db:migrate db:seed
```

Finally, we'll start the Rails server:
```
$ rails s
```

Now you're all set!  Navigating to `localhost:3000` in your browser should lead you to the homepage.