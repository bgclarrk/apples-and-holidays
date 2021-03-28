require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash.each do |season, holidays|
      holidays.each do |k, v|
        if k == :fourth_of_july
          return v.last
        end
      end
  end

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |k, v|
        v << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    holiday.each do |k, v|
      if k == :memorial_day
        v << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season] = {
    holiday_name => supply_array
  }

end

def all_winter_holiday_supplies(holiday_hash)

  holiday_hash.each do |season, holidays|
    if season == :winter
      return holidays.values.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |k, v|
      puts "  #{k.to_s.split("_").collect { |w| w.capitalize}.join(' ')}: #{v.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)

  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    bbq_holidays << holidays.keys if holidays.values.flatten.include?("BBQ")
  end

  bbq_holidays.flatten

end







