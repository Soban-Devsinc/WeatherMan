
def avg_highest_temp(file_name)
  highest_temp = 0
  no_of_days = 0


  File.readlines(file_name).drop(1).each do |line|

    weather_line = line.split(",")
    if weather_line[1] != ""
      highest_temp = weather_line[1].to_i + highest_temp
      no_of_days = no_of_days + 1
    end
  end
  avg_highest_temp_var = highest_temp / no_of_days
  puts "Highest Average: #{avg_highest_temp_var}C"

end


def avg_lowest_temp(file_name)
  lowest_temp = 0
  no_of_days = 0


  File.readlines(file_name).drop(1).each do |line|

    weather_line = line.split(",")
    if weather_line[3] != ""
      lowest_temp = weather_line[3].to_i + lowest_temp
      no_of_days = no_of_days + 1
    end
  end
  avg_lowest_temp_var = lowest_temp / no_of_days
  puts "Lowest Average: #{avg_lowest_temp_var}C"

end

def avg_humidity(file_name)
  humidity = 0
  no_of_days = 0

  File.readlines(file_name).drop(1).each do |line|

    weather_line = line.split(",")
    if weather_line[8] != ""
      humidity = weather_line[8].to_i + humidity
      no_of_days = no_of_days + 1
    end
  end
  avg_humidity_var = humidity / no_of_days
  puts "Average Humidity: #{avg_humidity_var}%"

end


puts "Task 2"
file_name="/home/dev/Downloads/Weather_man/Dubai_weather/Dubai_weather_2004_Aug.txt"
avg_highest_temp(file_name)
avg_lowest_temp(file_name)
avg_humidity(file_name)
