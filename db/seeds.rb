require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def family_find(to_find)
  family = Family.find_by_code(to_find)
  return family.id
end

familes = Family.create([
  { common_name:"Bean Family", family_name:"Leguminosae", code:"BEAN" },
  { common_name:"Beetroot Family", family_name:"Chenopodiaceae", code:"BEET" },
  { common_name:"Cabbage Family", family_name:"Brassicaceae", code:"CABB" },
  { common_name:"Carrot Family", family_name:"Umbelliferae", code:"CARR" },
  { common_name:"Daisy Family", family_name:"Compositae", code:"DAIS" },
  { common_name:"Grasses Family", family_name:"Poaceae/Gramineae", code:"GRAS" },
  { common_name:"Miscellaneous Crops", family_name:"Miscellaneous", code:"MISC" },
  { common_name:"Onion Family", family_name:"Amaryllidaceae", code:"ONIO" },
  { common_name:"Potato Family", family_name:"Solanaceae", code:"POTA" },
  { common_name:"Squash Family", family_name:"Cucurbitaceae", code:"SQUA" }
])

vegetables = File.read('db/data/vegetables.csv')
csv = CSV.parse(vegetables, headers: false)
csv.each do |row|
  row = Vegetable.create(
    name:       row[0].titleize,
    family_id:  family_find(row[1])
    )
end


