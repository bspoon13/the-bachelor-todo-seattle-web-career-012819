require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |person_hash|
    person_hash.each do |attribute, value|
      #binding.pry
      if value == "Winner"
        #binding.pry
        return person_hash["name"].split(" ").first
        #binding.pry
      end
    end
  end
end

def get_contestant_name(data, occupation)
data.each do |season, person_array|
  person_array.each do |person_hash|
    person_hash.each do |attribute, value|
      #binding.pry
      if value == occupation
        #binding.pry
        return person_hash["name"]
        #binding.pry
      end
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
data.each do |season, person_array|
  person_array.each do |person_hash|
      person_hash.each do |attribute, value|
        #binding.pry
        if value == hometown
          #binding.pry
          counter += 1
          #binding.pry
        end
      end
  end
end
return counter
end

def get_occupation(data, hometown)
  data.each do |season, person_array|
    person_array.each do |person_hash|
      person_hash.each do |attribute, value|
        #binding.pry
        if value == hometown
          #binding.pry
          return person_hash["occupation"]
          #binding.pry
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
average_age_array = []
counter = 0
  data[season].each do |person_hash|
    person_hash.each do |attribute, value|
      if attribute == "age"
        average_age_array << value.to_i
      end
    end
  end
sum = 0
  average_age_array.each do |number|
    sum += number
  end
average_age = sum.to_f / average_age_array.length
#binding.pry
average_age.round
#binding.pry
end
