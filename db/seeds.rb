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

Tobias is a highly motivated and friendly Personal Trainer with extensive experience in and around gyms. He is fully prepared to evaluate client’s physical fitness, understand their needs and then develop a practical and achievable routine for them to reach their targets. He works in close partnership with his clients. Getting the right nutritional plan and advice is the key to physical and mental improvement, and that is what Tobias delivers." )
u21.password = 'password'
u21.password_confirmation = 'password'
u21.image = File.open(Rails.root + 'seed_images/tobias.jpg')
u21.save!

u22 = User.new(name:"Vinisha",role:"instructor",email:"vinisha@me.com", biography:"Coming from a Athletic background in sprinting, Natalie has always been passionate about the world of fitness. After studying to become a Personal Trainer, Natalie decided to advance her knowledge with specialist Strength Coaching qualifications and Nutritional courses.

Natalie specialises in fat loss and building lean muscle - this is the art of improving body composition, which Natalie has fine tuned with her years of experience to get her clients the fastest possible results and the best physical transformations.
" )
u22.password = 'password'
u22.password_confirmation = 'password'
u22.image = 'https://s3-eu-west-1.amazonaws.com/fitnessproject/vinisha.jpg'
u22.save!

u4 = User.new(name:"Iain",role:"client", email: "iain@me.com")
u4.password = 'password'
u4.password_confirmation = 'password'
u4.save!

u5 = User.new(name:"Mark",role:"client", email: "mark@me.com")
u5.password = 'password'
u5.password_confirmation = 'password'
u5.save!

u6 = User.new(name:"Mathilda",role:"client", email: "mathilda@me.com")
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

l1 = Lesson.create(title:"Intro to Yoga",description:"Yoga is a science of right living and it works when integrated in our daily life. It works on all aspects of the person: the physical, mental, emotional, psychic and spiritual. The word yoga means ‘unity’ or ‘oneness’ and is derived from the Sanskrit word ‘yuj’ which means ‘to join’.

There are too many misconceptions clouding the science of Yoga. People perceive it to be some kind of black or white magic, sorcery, physical or mental debauchery through which miraculous feats can be performed. For some it is an extremely dangerous practice which should be limited to only those who have renounced the world. Few others think it to be a kind of mental and physical acrobatism that is compatible only to a Hindu mind.", capacity: 20, instructor_id: u2.id, category_id: c3.id, start_time: Time.new(2000,1,1,9,30), end_time: Time.new(2000,1,1,10,0), date: Date.new(2015,1,1),category_id: c3.id, instructor_id: u2.id)



  l2 = Lesson.create(title:"Advanced Yoga",description: "Yoga is a science of right living and it works when integrated in our daily life. It works on all aspects of the person: the physical, mental, emotional, psychic and spiritual. The word yoga means ‘unity’ or ‘oneness’ and is derived from the Sanskrit word ‘yuj’ which means ‘to join’.

There are too many misconceptions clouding the science of Yoga. People perceive it to be some kind of black or white magic, sorcery, physical or mental debauchery through which miraculous feats can be performed. For some it is an extremely dangerous practice which should be limited to only those who have renounced the world. Few others think it to be a kind of mental and physical acrobatism that is compatible only to a Hindu mind.", instructor_id: u2.id, category_id: c3.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,1,12),capacity: 10)

    l3 = Lesson.create(title:"poledancing 101",description: "Pole dancing is a unique dance form that combines strength, coordination, cardiovascular exercise, elegance, posture and flexibility in a dynamic and fun way that is never boring, never feels like a fitness class and always gives you a great workout. It's not only a great new way to get fit, but also a wonderfully empowering experience for women.

      At Pole Dancing School you can experience this ultimate sense of self expression. Whether you're a beginner wanting to learn new moves for personal enjoyment or an experienced dancer or fitness professional wanting to develop your career, we have just the class for you. We offer open classes, scheduled courses, private lessons, private pole dancing events, technical workshops and dance/career consulting. All our classes are held in the Central London area only.",category_id: c1.id, instructor_id: u3.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,1,15),capacity: 10)

    l4 = Lesson.create(title:"Muay Thai Kick Boxing", description: "First developed in Thailand 16th century as a warfare art, muay thai is renowned for its effective use of low kicks, knees & elbows. The classes are very friendly and you will quickly settle in so don’t be shy. The classes are multi level so you will work at a level to suit you. You don’t need to rely on friends turning up, we can find you a partner to train with.",category_id: c4.id, instructor_id: u1.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,1,18),capacity: 20)

    l5 = Lesson.create(title:"Urban Workout ", description: "This workout is designed by Tobias Hale, an instructor in ‘parkour’ – the French discipline of moving through your environment without letting any obstacles stop you.

He runs training camps that utilise parkour techniques to turn urban areas into gym-free, fat-burning environments. Try this 2-4 times a week on your way home from work and shed up to 4kg in a month.",category_id: c2.id, instructor_id: u21.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,2,1),capacity: 5)

    l6 = Lesson.create(title:"circuit training 1", description: "30 minutes of intense conditioning work using a kettlebell. From kettlebell swings, to windmills, to squats, lunges, rows, snatches and cleans. This class will work your entire body and give you a great workout, concentrating on the butt, core and shoulders. Don't be fooled by the 30 minute length of this class, it's a tough workout, but will be over before you know it.",category_id: c5.id, instructor_id: u20.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,2,28),capacity: 15)

    l14 = Lesson.create(title:"circuit training 2", description: "30 minutes of intense conditioning work using a kettlebell. From kettlebell swings, to windmills, to squats, lunges, rows, snatches and cleans. This class will work your entire body and give you a great workout, concentrating on the butt, core and shoulders. Don't be fooled by the 30 minute length of this class, it's a tough workout, but will be over before you know it.",category_id: c5.id, instructor_id: u20.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,1,12),capacity: 5)

    l7 = Lesson.create(title:"Daybrakr", description: "Kickstart the beginning of your day with an intense burst of clubbing.

      We offer crazy dancing, delicious smoothies and cool floating jellyfish and all before your first morning meeting!",category_id: c2.id, instructor_id: u2.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,1),capacity: 5)


    l9 = Lesson.create(title:"Modern Dance: Thriller", description: "Come and join us at one of GetFit's most popular classes. We will choreograph and rehearse syncronised routines to modern pop and R & B songs before performing to friends and family in 1 months time. This month's Song is Michael Jackson's 'Thriller', any standard of dancer is welcome although applicants with previous moonwalking experience will be viewed favourably",category_id: c1.id, instructor_id: u3.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,1,1),capacity: 5)

    l10 = Lesson.create(title:"Modern Dance: Hips Don't Lie", description: "Come and join us at one of GetFit's most popular classes. We will choreograph and rehearse syncronised routines to modern pop and R & B songs before performing to friends and family in 1 months time. This month's Song is Skakira's 'Hips Don't Lie', both sexes are welcome to join the group but be warned that you will be required to wear sequins in our final performance",category_id: c1.id, instructor_id: u3.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,4,12),capacity: 5)

    l11 = Lesson.create(title:"circuit training", description: "30 minutes of intense conditioning work using a kettlebell. From kettlebell swings, to windmills, to squats, lunges, rows, snatches and cleans. This class will work your entire body and give you a great workout, concentrating on the butt, core and shoulders. Don't be fooled by the 30 minute length of this class, it's a tough workout, but will be over before you know it.",category_id: c4.id, instructor_id: u1.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2014,5,11),capacity: 15)

    l12 = Lesson.create(title:"circuit training", description: "30 minutes of intense conditioning work using a kettlebell. From kettlebell swings, to windmills, to squats, lunges, rows, snatches and cleans. This class will work your entire body and give you a great workout, concentrating on the butt, core and shoulders. Don't be fooled by the 30 minute length of this class, it's a tough workout, but will be over before you know it.",category_id: c4.id, instructor_id: u21.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,4,10),capacity: 40)

    l13 = Lesson.create(title:"spinning", description: "Join our friendly spinning group. We have state-of-the-art equipment and a well-trained instructor who will tailor the class to the needs of the group. We also have a cutting-edge soundsystem and a carefully curated playlist to keep you in the zone for the duration of the workout",category_id: c5.id, instructor_id: u22.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,15),capacity: 5)

    l15 = Lesson.create(title:"spinning", description: "Join our friendly spinning group. We have state-of-the-art equipment and a well-trained instructor who will tailor the class to the needs of the group. We also have a cutting-edge soundsystem and a carefully curated playlist to keep you in the zone for the duration of the workout",category_id: c5.id, instructor_id: u22.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,20),capacity: 10)

    l16 = Lesson.create(title:"Advanced Parkour", description: "Parkour influences one's thought processes by enhancing self-confidence and critical thinking skills that allow one to overcome everyday physical and mental obstacles. During this class we will also overcome physical obstacles such as bridges, apartment-blocks and industrial cranes.",category_id: c2.id, instructor_id: u22.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,15),capacity: 10)

    l18 = Lesson.create(title:"Insanity 1", description: "Want to get fitter, faster? Then our new Insanity classes could be just the thing for you.

      The cardio-based, total-body conditioning programme and is based on 'max interval training', a faster way of burning calories and this 45 minute routine will allow you to achieve a 1000-calorie burn.", instructor_id: u2.id, category_id: c4.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,18),capacity: 10)



    l19 = Lesson.create(title:"Insanity 2", description: "Want to get fitter, faster? Then our new Insanity classes could be just the thing for you.

      The cardio-based, total-body conditioning programme and is based on 'max interval training', a faster way of burning calories and this 45 minute routine will allow you to achieve a 1000-calorie burn.",category_id: c2.id, instructor_id: u2.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,21),capacity: 10)

    l20 = Lesson.create(title:"Insanity 3", description: "Want to get fitter, faster? Then our new Insanity classes could be just the thing for you.

      The cardio-based, total-body conditioning programme and is based on 'max interval training', a faster way of burning calories and this 45 minute routine will allow you to achieve a 1000-calorie burn.",category_id: c2.id, instructor_id: u2.id, start_time: Time.new(2000,1,2,9,30), end_time: Time.new(2000,1,1,11,30), date: Date.new(2015,3,30),capacity: 10)


  r1 = Review.create(user_id: u4.id, lesson_id: l3.id, rating: 5, comment: "Loved it!")

  r2 = Review.create(user_id: u5.id, lesson_id: l3.id, rating: 5, comment: "really fun!")

  r3 = Review.create(user_id: u6.id, lesson_id: l2.id, rating: 1, comment: "Too tiring")

  r4 = Review.create(user_id: u7.id, lesson_id: l1.id, rating: 4, comment: "Great")

  r5 = Review.create(user_id: u4.id, lesson_id: l4.id, rating: 1, comment: "Boring")

  r6 = Review.create(user_id: u5.id, lesson_id: l4.id, rating: 5, comment: "Loved it!")

  r7 = Review.create(user_id: u6.id, lesson_id: l5.id, rating: 2, comment: "Not good enough")

  r8 = Review.create(user_id: u7.id, lesson_id: l6.id, rating: 1, comment: "Terrible")


  r9 = Review.create(user_id: u4.id, lesson_id: l7.id, rating: 3, comment: "I thought it was ok")

  r10 = Review.create(user_id: u5.id, lesson_id: l9.id, rating: 2, comment: "Not good enough")

  r11 = Review.create(user_id: u6.id, lesson_id: l9.id, rating: 5, comment: "Great lesson")

  r12 = Review.create(user_id: u7.id, lesson_id: l9.id, rating: 2, comment: "Not tailored to our class's needs")

  b1 = Booking.create(user_id:u4.id,lesson_id:l3.id, status: 'confirmed')
  b2 = Booking.create(user_id:u5.id,lesson_id:l3.id, status: 'confirmed')
  b3 = Booking.create(user_id:u6.id,lesson_id:l2.id, status: 'confirmed')
  b4 = Booking.create(user_id:u7.id,lesson_id:l1.id, status: 'confirmed')
  b5 = Booking.create(user_id:u4.id,lesson_id:l4.id, status: 'confirmed')
  b6 = Booking.create(user_id:u5.id,lesson_id:l4.id, status: 'confirmed')
  b7 = Booking.create(user_id:u6.id,lesson_id:l5.id, status: 'confirmed')
  b8 = Booking.create(user_id:u7.id,lesson_id:l6.id, status: 'confirmed')
  b9 = Booking.create(user_id:u4.id,lesson_id:l7.id, status: 'confirmed')

  b10 = Booking.create(user_id:u5.id,lesson_id:l9.id, status: 'confirmed')

  b11 = Booking.create(user_id:u6.id,lesson_id:l9.id, status: 'confirmed')

  b12 = Booking.create(user_id:u7.id,lesson_id:l9.id, status: 'confirmed')

  b13 = Booking.create(user_id:u4.id,lesson_id:l10.id, status: 'pending')

  b14 = Booking.create(user_id:u5.id,lesson_id:l11.id, status: 'pending')

  b15 = Booking.create(user_id:u6.id,lesson_id:l12.id, status: 'pending')

  b16 = Booking.create(user_id:u7.id,lesson_id:l13.id, status: 'pending')

  b17 = Booking.create(user_id:u4.id,lesson_id:l13.id, status: 'pending')

  b18 = Booking.create(user_id:u5.id,lesson_id:l15.id, status: 'pending')

  b19 = Booking.create(user_id:u6.id,lesson_id:l15.id, status: 'pending')

  b20 = Booking.create(user_id:u7.id,lesson_id:l16.id, status: 'pending')

  b21 = Booking.create(user_id:u4.id,lesson_id:l18.id, status: 'pending')

puts 'all done!'



