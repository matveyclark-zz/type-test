# Type Test web app

⌨️ This is a web app designed to test and produce reports on a User's typing ability. ⌨️
This app was made as an accessible and easy-to-use tool to practice typing ability for free.

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

# Create an account 
Choose from the options on the homescreen to create an account on the platfiorm.
![homescreen](/images/home.png)

# Select from available tests
Select any type test you would like to complete based on the difficulty level provided
![test-index](/images/tests.png)

# Complete the test
Once you have submitted your typed answer, complete the test and generate a report to see how your typing skills fair
![report-gen](/images/generate-report.png)
