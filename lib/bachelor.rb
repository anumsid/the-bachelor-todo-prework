require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    person.each do |k, v|
      if v == "Winner"
        name = person["name"]
        return name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |people|
      people.each do |k, v|
        if v == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |person|
      person.each do |k, v|
      if k == "hometown"
        if v == hometown
          counter += 1
        end
      end
    end
  end
end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |person|
      person.each do |k, v|
        if k == "hometown"
          if v == hometown
            return person["occupation"]
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)

  age = 0

  data[season].each do |person|
    person.each do |k, v|
      if k == "age"
        binding.pry
        age += v.to_f
      end
    end
  end
  answer = (age/(data[season].length)).round()
  return answer
end
