require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_name, season_data|
    binding.pry
    if data[season_name]["status"] == "winner"
      return data[season_name][name]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
