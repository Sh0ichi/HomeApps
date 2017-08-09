class Diary < ApplicationRecord
  attr_accessor :in_month_flag
  validates(:record_date, presence: true)
end
