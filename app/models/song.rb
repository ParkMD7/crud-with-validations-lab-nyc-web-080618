class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: {scope: [:release_year, :artist_name]}
  validates :release_year, presence: true, :if => "self.released==true"
  validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}, :if => "self.released==true"
end # end of Song Class


#
# - Songs have the following attributes and limitations:
#   - title, a string
#     - Must not be blank
#     - Cannot be repeated by the same artist in the same year
#   - released, a boolean describing whether the song was ever officially released.
#     - Must be true or false
#   - release_year, an integer
#     - Optional if released is false
#     - Must not be blank if released is true
#     - Must be less than or equal to the current year
#   - artist_name, a string
#     - Must not be blank
#   - genre, a string
