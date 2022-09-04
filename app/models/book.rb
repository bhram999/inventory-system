class Book < ApplicationRecord
  belongs_to :store

  include PgSearch
  pg_search_scope :search_by_term, against: [:name, :author],
    using: {
      tsearch: {
        any_word: true,
        prefix: true
      }
    }
end
