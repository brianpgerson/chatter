# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.create({
  body: "Here's a first message"
})
Message.create({
  body: "Here's a first message with a #hashtag"
})
Message.create({
  body: "Here's a message about the #warriors - those dudes are awesome."
})
Message.create({
  body: "But we can't forget about those #sfgiants either!"
})
Message.create({
  body: "But tonight, it's game 2 of the #warriors first playoff round. #godubs!"
})

Hashtag.create({
  hashtag: "#hashtag",
  count: 1
})
Hashtag.create({
  hashtag: "#warriors",
  count: 2
})
Hashtag.create({
  hashtag: "#sfgiants",
  count: 1
})
Hashtag.create({
  hashtag: "#godubs",
  count: 1
})

Tagging.create({
  message_id: 2,
  hashtag_id: 1,
})
Tagging.create({
  message_id: 3,
  hashtag_id: 2,
})
Tagging.create({
  message_id: 4,
  hashtag_id: 3,
})
Tagging.create({
  message_id: 5,
  hashtag_id: 2,
})
Tagging.create({
  message_id: 5,
  hashtag_id: 4,
})
