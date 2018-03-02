# README

rails g scaffold GigType icon name description color
rails g scaffold Gig user:belongs_to gig_type:belongs_to name description deadline:date status



rails g scaffold Proposal user:belongs_to gig:belongs_to content:text status
ok, so to create a proposal for a specific gig

We are creating a new proposal for: gig id
want: New proposal for <%GIG NAME %>


In admin controller, need to define @ freelancer_profile.picture
see freelancer controller



pending
paid
approved or rejected
assigned or expired
completed
reviewed


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

AIzaSyAuPnv1_u0gyWy1CLRg5uaG1z8GhZoajWQ
