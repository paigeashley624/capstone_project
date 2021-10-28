# Bookstash API

Provides backend support for [Bookstash front-end](https://github.com/paigeashley624/capstone_project_vue) which recommends books to users based on their previous readings.

## System Requirements

- ruby 3.0
- Postgres Database

## How to Install

After cloning the project

```bash
$ bundle install
$ bundle exec rack db:create
$ bundle exec rack db:migrate
```

## Run the development server

```bash
$ bundle rails server
```
