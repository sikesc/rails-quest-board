puts "Generating Quests"
puts "Starting now ..."

15.times do
  creature = Faker::Games::ElderScrolls.creature
  Quest.create!(
    name: "#{creature} Slayer",
    description: "Slay #{rand(1..10)} #{creature}",
    reward: rand(10..1000)
  )
end


puts "Complete!"
puts "Generated #{Quest.all.length} quests"

puts "Generating Characters"
puts "Starting now..."

50.times do
  Character.create!(
  name: Faker::Games::Witcher.character,
  weapon: Faker::Games::ElderScrolls.weapon
  )
end


puts "Complete!"
puts "Generated #{Character.all.length} characters"
