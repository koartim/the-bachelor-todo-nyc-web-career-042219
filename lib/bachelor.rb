require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = []
  data[season].each do |name|
    name.each do |index, value|
      if index == "name"
        winner << value[value].split
      end
    end
  end
  winner.slice(0).shift
end

def get_contestant_name(data, occupation)
  new_array = []
  data.each do |k, v|
    v.each do |item|
      item.has_key?("occupation")
      if item["occupation"] == occupation
        new_array << item["name"]
      end
    end
  end
new_array.join(", ")
end



def count_contestants_by_hometown(data, hometown)
  hometown_array = []
  data.each do |k, v|
    v.each do |item|
      if item["hometown"] == hometown
      hometown_array << item["hometown"]
      end
    end
  end
  hometown_array.length
end

def get_occupation(data, hometown)
  data.each do |k,v|
    v.each do |item|
    if item["hometown"] == hometown
        return item["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  counterAge = 0
  data[season].each do |actor|
    counter += 1
    counterAge += actor["age"].to_f
  end
  return (counterAge / counter).round
end	
