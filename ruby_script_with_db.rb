require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'beers.db'
)

class Beer < ActiveRecord::Base
  attr_accessor :brand, :style
end

best_beer = Beer.create!(brand: "Coors", style: "Lager")
other_beer = Beer.create!(brand: "Becks", style: "Pilsner")

puts best_beer.inspect
puts other_beer.inspect

