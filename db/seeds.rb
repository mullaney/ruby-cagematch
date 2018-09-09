# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(
  email: 'kvinklly@gmail.com',
  password: 'password',
  password_confirmation: 'password'
) if Rails.env.development?

cagematch = Cagematch.create!(
  title: 'Cage-Match NYC',
  slug: 'ucbt-nyc',
  time_slot: 'Thursdays at 11pm',
  theater_name: 'Upright Citizens Brigade Theater',
  theater_url: 'http://www.ucbtheater.com/',
  venue_address: '555 W 42nd Street\n(between 10th and 11th Avenues)',
  box_office_url: 'http://newyork.ucbtheatre.com/shows/view/25',
  box_office_phone_number: '212-366-9176',
  ticket_price_description: 'Tickets: $7',
  show_description: 'Welcome to the world\'s most dangerous Improv show, where two mighty teams of gladiators will take the stage to prove who is the best of the best.\n\nThis is not an exhibition. This is a no-holds-barred competition. The audience determines the winner each week via secret ballot. The winner returns the following week to defend their title against a new challenger.',
  logo_url: 'http://cage-match.com/img/cmtitle2.gif',
  show_picture_url: 'http://cage-match.com/img/pcr3.gif',
  tag_line: 'The World\'s Most Dangerous Improv Show'
)

require "json"

file = File.read(File.dirname(__FILE__) + '/json_seeds/news_posts.json')
posts = JSON.parse(file)

posts.each {|post|
  Post.create!(
    cagematch_id: cagematch['id'],
    title: post['title'],
    body: post['text'],
    author: post['author'].present? ? post['author'] : 'CageMatch NYC',
    published_at: Time.at(post['date'].to_i)
  )
}

file = File.read(File.dirname(__FILE__) + '/json_seeds/teams.json')
teams = JSON.parse(file)

teams.each {|team|
  Team.create!(
    cagematch_id: cagematch['id'],
    name: team['name'],
    tagline: team['tagline']
  )
}
