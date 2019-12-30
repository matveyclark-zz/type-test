# Type Test web app

This is a web app designed to test and produce reports on a User's typing ability.

## Install

### Clone this repository

```shell
git clone git@github.com:matveyclark/type-test.git
cd type-test
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle install
```

### Initialize the database

```shell
rake db:create db:migrate db:seed
```

### Serve

```shell
rails s
```
