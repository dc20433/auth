class Regi < ApplicationRecord
  has_many :patients
  has_many :charts

  GENDER_OPTIONS = [
  ['Select', ''],
  ['Male', 'Male'],
  ['Female', 'Female'],
  ['Other', 'Other']
]

end
