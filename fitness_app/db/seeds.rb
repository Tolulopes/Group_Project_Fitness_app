# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(name:"Oli",role:"instructor")
u2 = User.create(name:"Lauren",role:"instructor")
u3 = User.create(name:"Tolu",role:"instructor")
u4 = User.create(name:"Iain",role:"client")
u5 = User.create(name:"Mark",role:"client")
u6 = User.create(name:"James",role:"client")
u7 = User.create(name:"Jack",role:"client")

c1 = Category.create(name:"dance")
c2 = Category.create(name:"sports")
c3 = Category.create(name:"yoga")

l1 = Lesson.create(title:"Intro to Yoga",description:"Typewriter Pitchfork leggings, slow-carb ennui twee seitan readymade lo-fi. Small batch Shoreditch next level, XOXO whatever bicycle rights semiotics Wes Anderson authentic vegan sustainable 8-bit. Hashtag lo-fi messenger bag kale chips, deep v blog artisan vegan Thundercats retro shabby chic occupy fashion axe American Apparel before they sold out. Intelligentsia shabby chic cornhole Truffaut, stumptown freegan heirloom. Lo-fi shabby chic locavore, fingerstache tattooed umami jean shorts iPhone Carles Vice biodiesel. Hoodie Etsy polaroid, organic Marfa Wes Anderson try-hard hella VHS wolf pork belly mlkshk tattooed. PBR +1 drinking vinegar Brooklyn.",category_id: 3)

  l2 = Lesson.create(title:"Advanced Yoga",description: "Carles health goth meditation art party, bitters Pinterest banh mi lo-fi. Chillwave scenester chia, +1 iPhone lo-fi Bushwick twee actually authentic. Authentic meh migas, slow-carb hella fap pickled semiotics taxidermy fingerstache disrupt normcore tote bag. Gentrify four dollar toast keytar Portland meggings PBR&B. Godard Pitchfork yr, pug chillwave artisan lo-fi meh forage polaroid pour-over art party messenger bag tousled lumbersexual. Synth raw denim before they sold out plaid Intelligentsia. Bitters fashion axe normcore listicle mumblecore, pour-over migas chambray tofu drinking vinegar narwhal Helvetica.",category_id: 3)

    l3 = Lesson.create(title:"poledancing 101",description: "Cray locavore Tumblr, typewriter hashtag tofu vegan flannel sartorial freegan. VHS viral next level gentrify. Cray gluten-free hella, master cleanse Schlitz ennui skateboard meggings occupy. Marfa dreamcatcher Truffaut, artisan kitsch try-hard retro 90's lumbersexual. Shabby chic kitsch cronut iPhone YOLO cliche. Cronut cardigan yr plaid. Four dollar toast shabby chic kale chips, McSweeney's migas flexitarian cronut locavore brunch +1.",category_id: 1)

    l4 = Lesson.create(title:"squash coaching", description: "Listicle cliche cardigan tattooed, yr McSweeney's occupy Godard kogi bicycle rights four dollar toast ugh. Portland viral mlkshk Truffaut. Normcore 3 wolf moon pickled, Austin Williamsburg Banksy pork belly mixtape twee. Bitters Banksy selvage dreamcatcher. Trust fund chia retro, letterpress you probably haven't heard of them skateboard distillery Banksy Blue Bottle craft beer meggings seitan pork belly cred. Chia pickled High Life authentic, aesthetic meditation health goth direct trade Brooklyn. Master cleanse VHS messenger bag vegan, synth tattooed deep v fap Blue Bottle photo booth Banksy bitters ugh.",category_id: 2)

