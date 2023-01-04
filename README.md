# Instruction to get app running

## Installation

git clone
bundle install
rails action_mailbox:install
rails db:create
rails db:migrate

## Running the app

rails s

## Create user

navigate to `localhost:3000/users/new` and create a new user.

## Create a new ticket

navigate to `http://localhost:3000/rails/conductor/action_mailbox/inbound_emails/new` and send mail in the following format:

- from : {user email}
- to : support@example.com
- subject : {subject of the mail}
- body : {body of the mail}

click on `Deliver inbound email`
check the new ticket at `localhost:3000/tickets`

## Create a new comment under ticket

navigate to `http://localhost:3000/rails/conductor/action_mailbox/inbound_emails/new` and send mail in the following format:

- from : {user email}
- to : support+{your user_id}@example.com
- body : {body of the mail}

click on `Deliver inbound email`
check the new comment at `localhost:3000/tickets/{your user_id}`
