include PgSearch::Model

class Movie < ApplicationRecord
  
  belongs_to :director

  multisearchable against: [:title, :synopsis]

  pg_search_scope :search_by_title_synopsis,

      against: [:title, :synopsis],
      associated_against: {
        director: [:first_name, :last_name]
      },
      using: {
        tsearch: {prefix: true} 
      }

end
