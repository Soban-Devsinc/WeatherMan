
require_relative "modules.rb"
class Weather_man
  include Tasks
end

date = ARGV[1]
path = ARGV[2]

puts "Date: #{date}\nPath: #{path}"

date_split = date.split("/")
year = date_split[0]
month_num = date_split[1]

path_split = path.split("/")
puts path_split[5]

puts "Year: #{year}, Month: #{month_num}"

month = "Jan" if month_num.to_i == 1
month = "Feb" if month_num.to_i == 2
month = "Mar" if month_num.to_i == 3
month = "Apr" if month_num.to_i == 4
month = "May" if month_num.to_i == 5
month = "Jun" if month_num.to_i == 6
month = "Jul" if month_num.to_i == 7
month = "Aug" if month_num.to_i == 8
month = "Sep" if month_num.to_i == 9
month = "Oct" if month_num.to_i == 10
month = "Nov" if month_num.to_i == 11
month = "Dec" if month_num.to_i == 12

file_name = ""
puts "Enter task number: \n"
choice = STDIN.gets.to_i
if choice == 1
  file_name << "#{path}/#{path_split[5]}_#{year}"
  puts file_name
else
  file_name << "#{path}/#{path_split[5]}_#{year}_#{month}.txt"
  puts file_name
end

obj = Weather_man.new

obj.task1(file_name) if (choice == 1)
obj.task2(file_name) if (choice == 2)
obj.task3(file_name) if (choice == 3)
obj.task4(file_name) if (choice == 4)
