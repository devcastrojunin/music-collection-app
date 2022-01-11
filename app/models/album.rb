class Album < ApplicationRecord
    validates :artist , presence: true
    validates :album_name , presence: true
    validates :year , presence: true
end
