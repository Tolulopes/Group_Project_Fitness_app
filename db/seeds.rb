# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.new(name:"Oli",role:"instructor", email: "oli@me.com", image: "http://lorempixel.com/100/100/animals")
u1.password = 'password'
u1.password_confirmation = 'password'
u1.save!
u2 = User.new(name:"Lauren",role:"instructor", email: "lauren@me.com", image: "http://lorempixel.com/100/100/animals")
u2.password = 'password'
u2.password_confirmation = 'password'
u2.save!
u3 = User.new(name:"Tolu",role:"instructor", email: "tolu@me.com", image: "http://lorempixel.com/100/100/animals")
u3.password = 'password'
u3.password_confirmation = 'password'
u3.save!
u4 = User.new(name:"Iain",role:"client", email: "iain@me.com", image: "http://lorempixel.com/100/100/animals")
u4.password = 'password'
u4.password_confirmation = 'password'
u4.save!
u5 = User.new(name:"Mark",role:"client", email: "mark@me.com", image: "http://lorempixel.com/100/100/animals")
u5.password = 'password'
u5.password_confirmation = 'password'
u5.save!
u6 = User.new(name:"James",role:"client", email: "james@me.com", image: "http://lorempixel.com/100/100/animals")
u6.password = 'password'
u6.password_confirmation = 'password'
u6.save!
u7 = User.new(name:"Jack",role:"client", email: "jack@me.com", image: "http://lorempixel.com/100/100/animals")
u7.password = 'password'
u7.password_confirmation = 'password'
u7.save!

c1 = Category.create(name:"dance", image: "http://lorempixel.com/400/200/sports")
c2 = Category.create(name:"sports", image: "http://lorempixel.com/400/200/sports")
c3 = Category.create(name:"yoga", image: "http://lorempixel.com/400/200/sports")

l1 = Lesson.create(title:"Intro to Yoga",description:"Typewriter Pitchfork leggings, slow-carb ennui twee seitan readymade lo-fi. Small batch Shoreditch next level, XOXO whatever bicycle rights semiotics Wes Anderson authentic vegan sustainable 8-bit. Hashtag lo-fi messenger bag kale chips, deep v blog artisan vegan Thundercats retro shabby chic occupy fashion axe American Apparel before they sold out. Intelligentsia shabby chic cornhole Truffaut, stumptown freegan heirloom. Lo-fi shabby chic locavore, fingerstache tattooed umami jean shorts iPhone Carles Vice biodiesel. Hoodie Etsy polaroid, organic Marfa Wes Anderson try-hard hella VHS wolf pork belly mlkshk tattooed. PBR +1 drinking vinegar Brooklyn.",category_id: c3.id, instructor_id: u2.id)

  l2 = Lesson.create(title:"Advanced Yoga",description: "Carles health goth meditation art party, bitters Pinterest banh mi lo-fi. Chillwave scenester chia, +1 iPhone lo-fi Bushwick twee actually authentic. Authentic meh migas, slow-carb hella fap pickled semiotics taxidermy fingerstache disrupt normcore tote bag. Gentrify four dollar toast keytar Portland meggings PBR&B. Godard Pitchfork yr, pug chillwave artisan lo-fi meh forage polaroid pour-over art party messenger bag tousled lumbersexual. Synth raw denim before they sold out plaid Intelligentsia. Bitters fashion axe normcore listicle mumblecore, pour-over migas chambray tofu drinking vinegar narwhal Helvetica.",category_id: c3.id, instructor_id: u2.id)

    l3 = Lesson.create(title:"poledancing 101",description: "Cray locavore Tumblr, typewriter hashtag tofu vegan flannel sartorial freegan. VHS viral next level gentrify. Cray gluten-free hella, master cleanse Schlitz ennui skateboard meggings occupy. Marfa dreamcatcher Truffaut, artisan kitsch try-hard retro 90's lumbersexual. Shabby chic kitsch cronut iPhone YOLO cliche. Cronut cardigan yr plaid. Four dollar toast shabby chic kale chips, McSweeney's migas flexitarian cronut locavore brunch +1.",category_id: c1.id, instructor_id: u3.id)

    l4 = Lesson.create(title:"squash coaching", description: "Listicle cliche cardigan tattooed, yr McSweeney's occupy Godard kogi bicycle rights four dollar toast ugh. Portland viral mlkshk Truffaut. Normcore 3 wolf moon pickled, Austin Williamsburg Banksy pork belly mixtape twee. Bitters Banksy selvage dreamcatcher. Trust fund chia retro, letterpress you probably haven't heard of them skateboard distillery Banksy Blue Bottle craft beer meggings seitan pork belly cred. Chia pickled High Life authentic, aesthetic meditation health goth direct trade Brooklyn. Master cleanse VHS messenger bag vegan, synth tattooed deep v fap Blue Bottle photo booth Banksy bitters ugh.",category_id: c2.id, instructor_id: u1.id)

  r1 = Review.create(user_id: u4.id, lesson_id: l3.id, rating: 5, comment: "Loved it!")

  r2 = Review.create(user_id: u5.id, lesson_id: l3.id, rating: 5, comment: "really fun!")

  r3 = Review.create(user_id: u6.id, lesson_id: l2.id, rating: 1, comment: "Too tiring")

  r4 = Review.create(user_id: u7.id, lesson_id: l1.id, rating: 4, comment: "Really relaxing and spiritual")

  b1 = Booking.create(user_id:u4.id,lesson_id:l3.id)
  b2 = Booking.create(user_id:u5.id,lesson_id:l3.id)
  b3 = Booking.create(user_id:u6.id,lesson_id:l2.id)
  b4 = Booking.create(user_id:u7.id,lesson_id:l1.id)



