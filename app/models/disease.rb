class Disease < ApplicationRecord
  searchkick language: "english", match: :word_start
  has_many :questions, dependent: :nullify
  has_many :users, dependent: :nullify

  # no validation since users can't modify it
end

