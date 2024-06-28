require 'rainbow/refinement'
using Rainbow

module Tasks
  def task1(file_path)

    puts File.path(file_path)
    highest_temp = 0
    mean_temp_for_highest = 0
    lowest_temp = 100
    mean_temp_for_lowest = 100
    humidity = 0
    mean_humidity = 0
    highest_temp_day = ""
    lowest_temp_day = ""
    humid_day = ""

    Dir.glob("#{file_path}*.txt") do |file_name|
      # puts "working on: #{file_name}..."
      File.readlines(file_name).drop(1).each do |line|
        weather_line = line.split(",")

        if weather_line[1] != ""
          if weather_line[1].to_i > highest_temp.to_i
            if weather_line[2].to_i > mean_temp_for_highest.to_i
              highest_temp_day = weather_line[0]
              highest_temp = weather_line[1]
              mean_temp_for_highest = weather_line[2]
            end
          elsif weather_line[3].to_i < lowest_temp.to_i
            if weather_line[2].to_i < mean_temp_for_lowest.to_i
              lowest_temp_day = weather_line[0]
              lowest_temp = weather_line[3]
              mean_temp_for_lowest = weather_line[2]
            end
          elsif weather_line[7].to_i > highest_temp.to_i
              if weather_line[8].to_i > mean_humidity.to_i
                humid_day = weather_line[0]
                humidity = weather_line[7]
                mean_humidity = weather_line[8]
              end
          end
        end
      end
    end


    puts "Highest: #{highest_temp}C on #{highest_temp_day}"
    puts "Lowest: #{lowest_temp}C on #{lowest_temp_day}"
    puts "Humid: #{humidity}% on #{humid_day}"


  end

  def task2(file_name)
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

  def task3(file_name)
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

  def task4(file_name)
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
end

