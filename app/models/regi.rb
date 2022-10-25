class Regi < ApplicationRecord
  has_many :patients
  has_many :charts
end
