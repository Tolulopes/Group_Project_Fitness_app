# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.new(name:"Oli",role:"instructor",email:"oli@me.com", biography:"My specialty is maximum fat burn. In summer I run outdoor boot camps and personal sessions in the parks - helping people achieve a slimmer waist and toned tummy is the most rewarding feeling.

Fitness is a journey and with my help I guarantee a happier and fitter you. Sessions will vary daily and will always ensure you unlock your full potential.

My passion has always been fitness, coming from a running background and taking part in two half marathons. Being the best me I could possibly be has always been my life's aim. Most people want the same, to be happier, slimmer and healthier. I want the best for everybody who trains with me.
" )
u1.password = 'password'
u1.password_confirmation = 'password'
u1.image = File.open(Rails.root + 'seed_images/oli.jpg')
u1.save!

u2 = User.new(name:"Lauren",role:"instructor", email: "lauren@me.com",biography:"Lauren is a focused and dedicated personal trainer who’s top priority is making sure her clients reach their fitness/physique and health goals.

Lauren specialises in preparing individuals from all backgrounds and fitness levels who have potential to compete in fitness modelling competitions. Having gained enormous experience on stage she can successfully train individuals to improve their physiques, stage confidence and charisma and ability to naturally pose and much much more.")
u2.password = 'password'
u2.password_confirmation = 'password'
u2.image = File.open(Rails.root + 'seed_images/lauren.jpg')
u2.save!

u3 = User.new(name:"Tolu",role:"instructor", email: "tolu@me.com", biography: "As an ardent dancer, Tolu has performed in a number of London shows, summer music festivals and the Rio de Janeiro Carnival. Tolu also plays forward in the Women's London Tigers Basketball Team and practices as a qualified coach.

With this varied physical experience, Tolu is able to offer training sessions with a wide spectrum of techniques that apply the body to a range of movements and challenges to achieve optimum results. She dedicates her time to tailoring sessions to suit individual needs and aspirations. ")
u3.password = 'password'
u3.password_confirmation = 'password'
u3.image = File.open(Rails.root + 'seed_images/tolu.jpg')
u3.save!

u20 = User.new(name:"Natalie",role:"instructor",email:"natalie@me.com", biography:"Coming from a Athletic background in sprinting, Natalie has always been passionate about the world of fitness. After studying to become a Personal Trainer, Natalie decided to advance her knowledge with specialist Strength Coaching qualifications and Nutritional courses.

Natalie specialises in fat loss and building lean muscle - this is the art of improving body composition, which Natalie has fine tuned with her years of experience to get her clients the fastest possible results and the best physical transformations." )
u20.password = 'password'
u20.password_confirmation = 'password'
u20.image = File.open(Rails.root + 'seed_images/natalie.jpg')
u20.save!

u21 = User.new(name:"Tobias",role:"instructor",email:"tobias@me.com", biography:"Fitness isn’t his job. It’s his vocation. Tobias has always had a deep desire to improve himself, but now he finds he gets more satisfaction from helping others.

Tobia is a highly motivated and friendly Personal Trainer with extensive experience in and around gyms. He is fully prepared to evaluate client’s physical fitness, understand their needs and then develop a practical and achievable routine for them to reach their targets. He works in close partnership with his clients. Getting the right nutritional plan and advice is the key to physical and mental improvement, and that is what Tobias delivers." )
u21.password = 'password'
u21.password_confirmation = 'password'
u21.image = File.open(Rails.root + 'seed_images/tobias.jpg')
u21.save!

u22 = User.new(name:"Vinisha",role:"instructor",email:"natalie@me.com", biography:"Coming from a Athletic background in sprinting, Natalie has always been passionate about the world of fitness. After studying to become a Personal Trainer, Natalie decided to advance her knowledge with specialist Strength Coaching qualifications and Nutritional courses.

Natalie specialises in fat loss and building lean muscle - this is the art of improving body composition, which Natalie has fine tuned with her years of experience to get her clients the fastest possible results and the best physical transformations.
" )
u22.password = 'password'
u22.password_confirmation = 'password'
u22.image = File.open(Rails.root + 'seed_images/vinisha.jpg')
u22.save!

u4 = User.new(name:"Iain",role:"client", email: "iain@me.com")
u4.password = 'password'
u4.password_confirmation = 'password'
u4.save!

u5 = User.new(name:"Mark",role:"client", email: "mark@me.com")
u5.password = 'password'
u5.password_confirmation = 'password'
u5.save!

u6 = User.new(name:"James",role:"client", email: "james@me.com")
u6.password = 'password'
u6.password_confirmation = 'password'
u6.save!

u7 = User.new(name:"Jack",role:"client", email: "jack@me.com")
u7.password = 'password'
u7.password_confirmation = 'password'
u7.save!

c1 = Category.create(name:"Dance",description:"Dance classes at GetFit are not about perfect technique (of lack there of, as the case may be). Dance is more about checking your inhibitions at the door and moving your frame to some great music.

Dance will get you fit while learning new skills. You may be after a dancer's body or just want to prove to your work mates that you weren’t just a tad tiddly last friday night and you can in fact ‘stop and do the hammer time’, either way, Frame has got the dance classes for you.

If you’re a bit nervous about throwing yourself straight into an open class, and want to master your technique before taking your Beyonce strut to the rest of the world.")

c2 = Category.create(name:"Urban",description:"Want to see incredible results without having to spend your life at the gym?

Our Urban Signature classes combine the best of all worlds, combining elements of everything on offer at GetFit to give you long, lean muscles and a rather smug feeling. The Urban Signature classes have been specially formulated to provide a selection of exciting and varied workouts which moves seamlessly through exercises.

We totally understand the need for efficiency in our daily lives so the Urban Signature classes are all about results and packing as much into the hour you set aside as possible.")

c3 = Category.create(name:"Holistic Treatment",description:"Yoga means union, united mind, body and spirit. Yoga as we know it in the West is in Sanskrit the asana part of yoga, meaning posture or pose. Yoga is breath-linked movements, so you move the body into asanas/poses with conscious breathing, resulting in a toned, flexible, lean body and a calm, level stress-free demeanor. Yoga has an array of benefits but can also be used as a tonic to things like stress, tight muscles, fatigue, insomnia, anxiousness and asthma.

Why do yoga? The short answer is that Yoga will make you feel better! Practicing postures linked to breathing will make you healthier and happier. It allows you to tune into your body's needs (such as muscle tightness), tune out of all the busy, stressful things around you and get into shape, all at the same time! ")

c4 = Category.create(name:"Insanity",description:"Forget everything you think you know about high-intensity
workouts. Because INSANITY turns old-school interval training on its head.

If you've ever been to a Spin class, you know how that works.You motor along at a moderate pace for awhile – then all at
once, you kick up your speed and heart rate – just for a minute or so. After that, it's back to a lower gear, giving you
plenty of time to catch your breath.

But with INSANITY, you do exactly the opposite. You workflat out in 3 to 5-minute blocks, and take breaks only long
enough to gulp some air and get right back to work. It's called Max Interval Training, because it keeps your body working at maximum capacity through your entire workout. You keep pushing your limits – so your body has to adapt. That's how you get in such insane shape in just 60 days.")

c5 = Category.create(name: "Frame Fitness",description:"At Frame there is no such thing as a dull work out. All fitness classes are lead by original instructors who bring a generous helping of variety, music and attitude to keep you interested and motivated. Our fitness classes are designed to push you to your comfortable limit and keep you entertained and we promise to never make you burst into tears because you can’t hold a damn squat for 45 minutes!

Frame’s QUICKIES are high intensity group training sessions designed to give you a fitness fix in just 30minutes. Whether , toning, strength or de-stressing you’re after, Frame’s quickies will achieve an ROI even your boss would be happy with.")

l1 = Lesson.create(title:"Intro to Yoga",description:"Typewriter Pitchfork leggings, slow-carb ennui twee seitan readymade lo-fi. Small batch Shoreditch next level, XOXO whatever bicycle rights semiotics Wes Anderson authentic vegan sustainable 8-bit. Hashtag lo-fi messenger bag kale chips, deep v blog artisan vegan Thundercats retro shabby chic occupy fashion axe American Apparel before they sold out. Intelligentsia shabby chic cornhole Truffaut, stumptown freegan heirloom. Lo-fi shabby chic locavore, fingerstache tattooed umami jean shorts iPhone Carles Vice biodiesel. Hoodie Etsy polaroid, organic Marfa Wes Anderson try-hard hella VHS wolf pork belly mlkshk tattooed. PBR +1 drinking vinegar Brooklyn.",category_id: c3.id, instructor_id: u2.id)

  l2 = Lesson.create(title:"Advanced Yoga",description: "Carles health goth meditation art party, bitters Pinterest banh mi lo-fi. Chillwave scenester chia, +1 iPhone lo-fi Bushwick twee actually authentic. Authentic meh migas, slow-carb hella fap pickled semiotics taxidermy fingerstache disrupt normcore tote bag. Gentrify four dollar toast keytar Portland meggings PBR&B. Godard Pitchfork yr, pug chillwave artisan lo-fi meh forage polaroid pour-over art party messenger bag tousled lumbersexual. Synth raw denim before they sold out plaid Intelligentsia. Bitters fashion axe normcore listicle mumblecore, pour-over migas chambray tofu drinking vinegar narwhal Helvetica.",category_id: c3.id, instructor_id: u2.id)

    l3 = Lesson.create(title:"poledancing 101",description: "Cray locavore Tumblr, typewriter hashtag tofu vegan flannel sartorial freegan. VHS viral next level gentrify. Cray gluten-free hella, master cleanse Schlitz ennui skateboard meggings occupy. Marfa dreamcatcher Truffaut, artisan kitsch try-hard retro 90's lumbersexual. Shabby chic kitsch cronut iPhone YOLO cliche. Cronut cardigan yr plaid. Four dollar toast shabby chic kale chips, McSweeney's migas flexitarian cronut locavore brunch +1.",category_id: c1.id, instructor_id: u3.id)

    l4 = Lesson.create(title:"squash coaching", description: "Listicle cliche cardigan tattooed, yr McSweeney's occupy Godard kogi bicycle rights four dollar toast ugh. Portland viral mlkshk Truffaut. Normcore 3 wolf moon pickled, Austin Williamsburg Banksy pork belly mixtape twee. Bitters Banksy selvage dreamcatcher. Trust fund chia retro, letterpress you probably haven't heard of them skateboard distillery Banksy Blue Bottle craft beer meggings seitan pork belly cred. Chia pickled High Life authentic, aesthetic meditation health goth direct trade Brooklyn. Master cleanse VHS messenger bag vegan, synth tattooed deep v fap Blue Bottle photo booth Banksy bitters ugh.",category_id: c4.id, instructor_id: u1.id)

    l5 = Lesson.create(title:"squash coaching", description: "Listicle cliche cardigan tattooed, yr McSweeney's occupy Godard kogi bicycle rights four dollar toast ugh. Portland viral mlkshk Truffaut. Normcore 3 wolf moon pickled, Austin Williamsburg Banksy pork belly mixtape twee. Bitters Banksy selvage dreamcatcher. Trust fund chia retro, letterpress you probably haven't heard of them skateboard distillery Banksy Blue Bottle craft beer meggings seitan pork belly cred. Chia pickled High Life authentic, aesthetic meditation health goth direct trade Brooklyn. Master cleanse VHS messenger bag vegan, synth tattooed deep v fap Blue Bottle photo booth Banksy bitters ugh.",category_id: c2.id, instructor_id: u21.id)

    l6 = Lesson.create(title:"squash coaching", description: "Listicle cliche cardigan tattooed, yr McSweeney's occupy Godard kogi bicycle rights four dollar toast ugh. Portland viral mlkshk Truffaut. Normcore 3 wolf moon pickled, Austin Williamsburg Banksy pork belly mixtape twee. Bitters Banksy selvage dreamcatcher. Trust fund chia retro, letterpress you probably haven't heard of them skateboard distillery Banksy Blue Bottle craft beer meggings seitan pork belly cred. Chia pickled High Life authentic, aesthetic meditation health goth direct trade Brooklyn. Master cleanse VHS messenger bag vegan, synth tattooed deep v fap Blue Bottle photo booth Banksy bitters ugh.",category_id: c2.id, instructor_id: u22.id)


  r1 = Review.create(user_id: u4.id, lesson_id: l3.id, rating: 5, comment: "Loved it!")

  r2 = Review.create(user_id: u5.id, lesson_id: l3.id, rating: 5, comment: "really fun!")

  r3 = Review.create(user_id: u6.id, lesson_id: l2.id, rating: 1, comment: "Too tiring")

  r4 = Review.create(user_id: u7.id, lesson_id: l1.id, rating: 4, comment: "Really relaxing and spiritual")

  b1 = Booking.create(user_id:u4.id,lesson_id:l3.id, status: 'attended')
  b2 = Booking.create(user_id:u5.id,lesson_id:l3.id, status: 'attended')
  b3 = Booking.create(user_id:u6.id,lesson_id:l2.id, status: 'attended')
  b4 = Booking.create(user_id:u7.id,lesson_id:l1.id, status: 'attended')



