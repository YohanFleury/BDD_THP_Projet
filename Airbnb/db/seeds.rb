require 'faker'

#Creation des City
arr_cities = ["St-raphaël", "Hyeres", "Bastia", "La Rochelle", "Paris", "Montpellier", "Bezier", "marseille", "Deux Verges", "Plurien", "Longcochon" ]

arr_cities.each do |town|
  City.create!(city_name: town)
end

#Creation des chiens
77.times do 
Dog.create!(name: Faker::Name.first_name, city_id: City.ids.sample)
end


#Créer des DogSitter
50.times do 
    DogSitter.create!(name: Faker::Name.first_name, city_id: City.ids.sample)
end


120.times do 
    Stroll.create!(dog_sitter_id: DogSitter.ids.sample, date: Faker::Time.between(from: 15.day.ago, to: DateTime.now ), city_id: City.ids.sample)

end


120.times do 
    DogStroll.create!(dog_id: Dog.ids.sample, stroll_id: Stroll.ids.sample)
end