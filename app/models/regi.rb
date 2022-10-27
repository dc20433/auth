class Regi < ApplicationRecord
  has_many :patients
  has_many :charts

  GENDER_OPTIONS = [
  ['Select', ''],
  ['Male', 'M'],
  ['Female', 'F'],
  ['Other', 'O']

]

end
