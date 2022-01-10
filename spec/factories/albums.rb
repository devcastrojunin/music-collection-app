FactoryBot.define do
  factory :album do
    artist { Faker::Artist.name }
    album_name { Faker::Lorem.sentence(word_count: 3) }
    year { Faker::Date.in_date_period(year: 2022).year }
  end
end
