# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
    [ 'Juan Gabriel', 'juanga@example.com', 'admin123'],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ],
    [ Faker::Name.name, Faker::Internet.email, 'admin123' ]
]

user_list.each do |username, email, password|
    User.create(username: username, email:email, password: password)
end

event_list = [
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 1 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 2 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 3 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 4 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 5 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 6 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 7 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 8 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 9 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 10 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 1 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 2 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 3 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 4 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 5 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 6 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 7 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 8 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 9 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 10 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 1 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 2 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 3 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 4 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 5 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 6 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 7 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 8 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 9 ],
    [ Faker::Quote.famous_last_words, Faker::Date.between(from: '2019-09-23', to: '2021-09-25'), Faker::TvShows::BojackHorseman.quote, 10 ]
]

event_list.each do |title, event_time, description, creator_id|
    Event.create(title: title, event_time: event_time, description: description, creator_id: creator_id)
end