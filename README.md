# Cage-match API

API and admin for cage-match.com.

API located at: [https://cage-match-api.herokuapp.com/]

## Dev Notes

To reset the db in development run:

```
heroku restart && heroku pg:reset DATABASE --confirm cage-match-api && heroku run rake db:migrate && heroku run rake db:seed
```

Then go into console and create the first admin user:

```
AdminUser.create!(
  email: 'kvinklly@gmail.com',
  password: '********',
  password_confirmation: '********'
)
```