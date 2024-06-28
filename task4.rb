require 'rainbow/refinement'
using Rainbow


def calculate_temps(file_name)
  File.readlines(file_name).drop(1).each_with_index do |line, index|
    weather_line = line.split(",")
    if weather_line[1] != ""
      highest_temp = weather_line[1].to_i
      lowest_temp = weather_line[3].to_i
      puts "Day #{index + 1}"
      count1 = 0
      count2 = 0
      while count1 < lowest_temp
        print "*".blue
        count1 += 1
      end
      while count2 < highest_temp
        print "*".red
        count2 += 1
      end
      puts " #{lowest_temp}C - #{highest_temp}C \n"
    end
  end
end


puts "Task 4"
file_name="/home/dev/Downloads/Weather_man/Dubai_weather/Dubai_weather_2004_Aug.txt"

calculate_temps(file_name)
