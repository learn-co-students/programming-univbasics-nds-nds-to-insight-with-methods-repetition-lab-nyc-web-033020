$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  count = 0
  names = [ ]
  while count < source.size do
  x = source[count][:name]
  names << x
    count += 1
  end
  return names
end

def total_gross(directors_database)
    grand_total = 0
       count = 0
         array = list_of_directors(directors_database)
          hash = directors_totals(directors_database)
        while count < array.size do
        grand_total += hash[array[count]]
       count += 1
   end
   return grand_total
end
