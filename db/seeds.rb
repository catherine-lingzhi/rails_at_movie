require "csv"

Movie.delete_all
ProductionCompany.delete_all

# grab the filename

filename = Rails.root.join("db/top_movies.csv")
puts "Loading movies from the csv file: #{filename}"
csv_data = File.read(filename)
movies = CSV.parse(csv_data, headers: true, encoding: "utf-8")

movies.each do |m|
  puts m["original_title"]
end
