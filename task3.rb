require 'rainbow/refinement'
using Rainbow


def calculate_temps(file_name)
  File.readlines(file_name).drop(1).each_with_index do |line, index|
    weather_line = line.split(",")
    if weather_line[1] != ""
      highest_temp = weather_line[1].to_i
      lowest_temp = weather_line[3].to_i

      puts "Day #{index + 1} "
      n = 0
      while n < highest_temp
        print "+".red
        n += 1
      end
        puts " #{highest_temp} \n"
      n = 0
      while n < lowest_temp
        print "+".blue
        n += 1
      end
        puts " #{lowest_temp} \n"
    end
  end
end


puts "Task 3"
file_name="/home/dev/Downloads/Weather_man/Dubai_weather/Dubai_weather_2004_Aug.txt"

calculate_temps(file_name)
