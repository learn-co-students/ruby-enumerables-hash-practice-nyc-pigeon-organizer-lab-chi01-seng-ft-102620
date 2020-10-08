require 'pry'
#create empty hash first
# loop to lowest nested level (triple loop)
# conditional to be if present already do not add again if not add
def nyc_pigeon_organizer(data)
  # write your code here!
  i = 0
  new_hash = {}
  #overall main hash
  description_key = {}
  #hash with symbols color, gender, and lives
  details_array = []
  # Array will include actual colors, which gender, and where they live
  data.each do |description, details|
    details.each do |details, names|
      names.each do |names, i|
        if !new_hash[names]
          new_hash[names] = {}
        end
        if !new_hash[names][description]
          new_hash[names][description] = []
        end
        new_hash[names][description] << details.to_s
        #binding.pry
      end
    end
  end
  new_hash
end
