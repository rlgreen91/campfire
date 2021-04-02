# Workshop Template

This readme file lays out out a consistent structure for RailsConf 2021 workshops to follow.  We recommend you use this readme to as the basis of your workshop's repo.  Fill in the sections below as appropriate for your workshop.

# Writing Better Forms
 
Include the description for your workshop.  Typically this would be the same description that you used for the program page.  We do recommend you make it clear this is part of the conference and link back to the conference program page at <https://railsconf.com/program/workshops>.  A good description should include what the workshop covers, what the attendees will get out of the workshop, and the expected skill level of the attendees.

For RailsConf 2021, you'll want to link to the Discord channels that will be used, URLs to come.

## Prerequisites

This section should list out anything that is required by attendees before the workshop starts in order to successfully participate in the workshop.  This is important in case they realize they can't fulfill the prerequisites and thus should reconsider attending.  


## Getting Ready

During the workshop, attendees should feel free to follow along by making changes to a locally running version of the codebase.  Attendees can choose to run the application locally within their system directly or by using the provided Dockerfile, as discussed in more detail below.  

Before installing and configuring the codebase, ensure that you have Git and the following versions of Ruby and Rails on your computer:
- Git
- Ruby v2.7.2
- Rails v6.1.3.1

You will need to define the various environment variables we use throughout the application.  Open a `env` file:
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