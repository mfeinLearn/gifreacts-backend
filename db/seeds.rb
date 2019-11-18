# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Emotion.create(name: "Happy")
HumerType.create(range: 2)
Gif.create(name: "Primary Shape" ,emotion_id: Emotion.all[0].id, humor_type_id: HumerType.all[0].id)

#
# Gif.new(name: "HaHa", emotion_id:e.id , humor_type_id:h.id)
