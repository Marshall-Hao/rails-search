include PgSearch::Model

class TvShow < ApplicationRecord
  multisearchable against: [:title, :synopsis]
end
