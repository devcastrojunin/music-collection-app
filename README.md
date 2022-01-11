# Music APP

This repository is part of the project music app, a [chalenge of Moat Builders](https://gitlab.com/-/snippets/2167416)
<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.2
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.4.4
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      PostgreSQL
    </td>
  </tr>
</table>

## Live application

See [DEMO](https://still-ridge-76938.herokuapp.com/sign_up) and follow steps below.

- Create a new user(admin or user)
- Login in application in [login page](https://still-ridge-76938.herokuapp.com/sign_in)


You can access the Artists and Albums pages in menu links.



## Configuration

```bash
git clone https://github.com/devcastrojunin/music-collection-app

# installation of dependencies
bundle install

# creation of database and tables
rails db:create
rails db:migrate
rails db:migrate RAILS_ENV=test

# To create roles(user and admin)
rails db:seed

# run the project
rails s
```

The app is available at `http://localhost:3000`.


## Tests

To run the tests:

```bash
rspec
```