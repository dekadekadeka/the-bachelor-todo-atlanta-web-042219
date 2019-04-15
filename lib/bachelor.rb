require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
winner = data[season][0]["name"].split(" ")
winner[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
          count += 1
        end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  # data.each do |season, contestants|
  #   contestants.each do |contestant|
  data[season].each do |contestant|
    contestant["age"]
  binding.pry
      ages = contestant["age"].to_f
      sum += ages
  #   end
  #     return average = (sum / contestants.length).to_i
  # end
end
