#? --- USERS ---

# puts "CREATING USER AND USER PROFILE"

# oliver = User.find_or_initialize_by({
#   email: "oliver@lewagon.com"
# })
# oliver.password = "lewagon"
# oliver.save!

# oliver_profile = UserProfile.find_or_initialize_by({
#   user: oliver
# })
# oliver_profile.foreign_address = "1 Bahnhofstrasse, Zürich"
# oliver_profile.eu_status = false
# oliver_profile.entry_method = "Family"
# oliver_profile.has_job_offer = false
# oliver_profile.has_study_offer = false
# oliver_profile.has_relative = true
# oliver_profile.avatar = "/Users/oliveranthony/Code/oliveranthony17/migrating_mango/app/assets/images/mangologo.png"
# oliver_profile.save!

#? --- COUNTRIES ---

puts "CREATING COUNTRIES"

switzerland = Country.find_or_initialize_by({
  name: "Switzerland",
})
switzerland.save!

#? --- TOPICS ---

puts "CREATING TOPICS FOR COUNTRY SHOW PAGES"

permits = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Permits"

})
permits.icon = '<i class="fa-solid fa-id-card"></i>'
permits.content = "There are a variety of permits available in Switzerland..."
permits.save!

emergency = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Emergency"
})
emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
emergency.content = "Here are the emergency phone numbers for Switzerland..."
emergency.save!

work = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Work"
})
work.icon = "<i class='fas fa-briefcase'></i>"
work.content = "Gaining employment in Switzerland can be difficult..."
work.save!

accommodation = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Accommodation"
})
accommodation.icon = "<i class='fas fa-home'></i>"
accommodation.content = "Accommodation in Switzerland can be competitive if looking close to the cities..."
accommodation.save!

pets = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Pets"
})
pets.icon = "<i class='fas fa-paw'></i>"
pets.content = "The requirements for bringing a pet to Switzerland can differ depending on the country you are travelling from..."
pets.save!

recycling = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Recycling"
})
recycling.icon = "<i class='fa-solid fa-recycle'></i>"
recycling.content = "Recycling is an important part of Swiss life but can be daunting at first..."
recycling.save!

transport = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Transport"
})
transport.icon = "<i class='fa-solid fa-train-tram'></i>"
transport.content = "Public transport is considered very good in Switzerland..."
transport.save!

health = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Health"
})
health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
health.content = "When moving to Switzerland it is mandatory to purchase health insurance within 3 months of arrival..."
health.save!

#? --- CATEGORIES ---

# puts "CREATING CATEGORIES BEFORE CREATING TASKS"

# work = Category.find_or_initialize_by({
#   title: "Work permit"
# })
# work.save!

# student = Category.find_or_initialize_by({
#   title: "Student permit"
# })
# student.save!

# married = Category.find_or_initialize_by({
#   title: "Family reunification (through marriage)"
# })
# married.save!

# all = Category.find_or_initialize_by({
#   title: "Applies to all"
# })
# all.save!

#? --- TASKS ---

puts "CREATING TASKS (BANK) RELATED TO COUNTRY"

puts "creating tasks under 'work_find'"

task1_work = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for jobs",
  eu: "eu"
})
task1_work.order = 1
task1_work.content = "Apply for jobs! As you are in the EU you can move to Switzerland now however we would recommend getting a job offer first."
task1_work.scope = "work_find"
task1_work.topic = work
task1_work.save!

#? --- ************ ---

task2_work = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for jobs",
  eu: "non-eu"
})
task2_work.order = 1
task2_work.content = "Apply for jobs! As you are not in the EU you can only stay in the country for 3 months (as a tourist) and we would therefore recommend finding a job before moving."
task2_work.scope = "work_find"
task2_work.topic = work
task2_work.save!

#? --- ************ -----------------

puts "creating tasks under 'work'"

task3_work = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for your work permit",
  eu: "eu"
})
task3_work.order = 2
task3_work.content = "As you are a entering Switzerland for work, you will need to apply for a permit using your work contract. As an eu-member this should be accepted"
task3_work.scope = "work"
task3_work.topic = work
task3_work.save!

#? --- ************ ---

task4_work = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for your work permit",
  eu: "non-eu"
})
task4_work.order = 2
task4_work.content = "As you are a entering Switzerland for work, you can begin the process by completing the online application form and issuing this to your local migration office. As a non-eu member there are many reqiurements such as..."
task4_work.scope = "work"
task4_work.topic = work
task4_work.save!

#? --- ************ ------------------

task1_study_find_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for further education",
  eu: "eu"
})
task1_study_find_eu.order = 1
task1_study_find_eu.content = "As you are in the EU you can move to Switzerland now however we would recommend getting a study offer first."
task1_study_find_eu.scope = "study-find"
task1_study_find_eu.topic = permits
task1_study_find_eu.save!

#? --- ************ --

task1_study_find_non_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for further education",
  eu: "non-eu"
})
task1_study_find_non_eu.order = 1
task1_study_find_non_eu.content = "As you are in the EU you can move to Switzerland now however we would recommend getting a study offer first."
task1_study_find_non_eu.scope = "study-find"
task1_study_find_non_eu.topic = permits
task1_study_find_non_eu.save!

#? --- ************ ------------------

task2_study_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for study permit",
  eu: "eu"
})
task2_study_eu.order = 2
task2_study_eu.content = "In order to be able to study in Switzerland you require a proof of acceptance from the education institution where you will be studying."
task2_study_eu.scope = "study"
task2_study_eu.topic = permits
task2_study_eu.save!

#? --- ************ --

task2_study_non_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for further education",
  eu: "non-eu"
})
task2_study_non_eu.order = 2
task2_study_non_eu.content = "Other foreign national students - other than EU/EFTA nationals - must contact the Swiss embassy or consulate in their own country and apply for a visa."
task2_study_non_eu.scope = "study"
task2_study_non_eu.topic = permits
task2_study_non_eu.save!

#? --- ************ ------------------

task1_family_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Bringing your family",
  eu: "eu"
})
task1_family_eu.order = 1
task1_family_eu.content = "If you come from an EU/ETFA country, you may bring your Spouse or registered partner, your children or grandchildren under the age of 21 or dependent, and (unless you are in training) your dependent parents and grandparents"
task1_family_eu.scope = "family"
task1_family_eu.topic = permits
task1_family_eu.save!

#? --- ************ --

task1_family_non_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for further education",
  eu: "non-eu"
})
task1_family_non_eu.order = 1
task1_family_non_eu.content = "If you come from a 'third country', you may bring your spouse/partner and your children under the age of 18"
task1_family_non_eu.scope = "family"
task1_family_non_eu.topic = permits
task1_family_non_eu.save!

#? --- ************ --

# study_find > study > family_find > family > all

puts "creating tasks under 'study_find'"

puts "creating tasks under 'study'"

puts "creating tasks under 'family_find'"

puts "creating tasks under 'family'"

puts "creating tasks under 'all'"

task1 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Permit approved",
  eu: "both"
})
task1.order = 4
task1.content = "Congratulations! Your permit has been approved. At this point you can begin the next tasks and start to think about the move to Switzerland!"
task1.scope = "all"
task1.topic = permits
task1.save!

#? --- ************ ---

task4 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Plan move - storage, moving companies, mail forwarding",
  eu: "both"
})
task4.order = 5
task4.content = "Plan everything you would like to bring to Switzerland, and things you will either want to sell or keep in storage. Get in contact with a moving company and arrange the transfer. "
task4.scope = "all"
task4.topic = permits
task4.save!

#? --- ************ ---

task5 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Pets (optional)",
  eu: "both"
})
task5.order = 6
task5.content = "You must check whether the animal you are bringing to switzerland is considered a 'pet',  Dogs, cats and ferrets and birds are subject to particular animal health regulations when travelling because there is a danger of their introducing diseases from another country. Almost all pets that meet the definition can enter Switzerland from any country without approval from the veterinary health authority or a health certificate. Special conditions apply to dogs, cats, ferrets and birds. Not more than 5 pets may be imported from third countries."
task5.scope = "all"
task5.topic = pets
task5.save!

#? --- ************ ---

task6 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Find living space / accomodation",
  eu: "both"
})
task6.order = 7
task6.content = "In Switzerland it takes on average around 2 months for residents to find a home"
task6.scope = "all"
task6.topic = permits
task6.save!

#? --- ************ ---

task7 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Notifiy energy provider of move date (for future address)",
  eu: "both"
})
task7.order = 8
task7.content = "Call your existing energy supplier at least 48 hours before you move out to let them know the date of your move, as well as the address you are moving to, so they can send your final bill."
task7.scope = "all"
task7.topic = permits
task7.save!

#? --- ************ ---

task8 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up bank account",
  eu: "both"
})
task8.order = 9
task8.content = "It is practically mandatory to have a current account in Switzerland, because it will be attached to a debit card, perhaps a credit card and access to the bank's secure online banking area or mobile app"
task8.scope = "all"
task8.topic = permits
task8.save!

#? --- ************ ---

task9 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Register as resident",
  eu: "both"
})
task9.order = 10
task9.content = "You must prepare the following documents for regestration: 1.) Valid ID or passports, 2.) Birth certificates of children (If you have any), 3.) Marrige certificate (If you have one), 4.) Your residential lease contract, 5.) Work contract or confirmation of admission to higher education institutions, 6.) For non-EU/EFTA citizens: police record from your home country, work permit approval/ entry visa, 7.) Certificate proving competence in the local language of Level A1 at a minimum, or proof of registration in a language course with this qualification as its goal"
task9.scope = "all"
task9.topic = permits
task9.save!

#? --- ************ ---

task10 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up health insurance for move date",
  eu: "both"
})
task10.order = 11
task10.content = "After moving to Switzerland, you must register with the health insurer of your choice for compulsory basic insurance within three months"
task10.scope = "all"
task10.topic = permits
task10.save!

#? --- ************ ---

task11 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up mobile phone - optional but recommended",
  eu: "both"
})
task11.order = 12
task11.content = "A mobile phone is recommended for access to Swiss apps (Such as for weather or for public transport)"
task11.scope = "all"
task11.topic = permits
task11.save!

#? --- ************ ---

task12 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up internet for living space - optional but recommended",
  eu: "both"
})
task12.order = 13
task12.content = "Internet is recommeneded as it would not be possible to use the previously suggessted apps"
task12.scope = "all"
task12.topic = permits
task12.save!

#? --- ************ ---

task13 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Sort out drivers license (optional)",
  eu: "both"
})
task13.order = 14
task13.content = "Inorder to get your standard drivers liscense in Switzerland, must first attend a first aid class, pass a theoretical test and then take a set amount of driving exams before you can apply for the driving test. If you begin your driving training at 17, you must wait a whole year before you may apply for your driving test, meanwhile you can do everything else mentioned."
task13.scope = "all"
task13.topic = permits
task13.save!

#? --- ************ ---

task14 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Receive invitation to migration office for biometrics",
  eu: "both"
})
task14.order = 15
task14.content = "???"
task14.scope = "all"
task14.topic = permits
task14.save!

#? --- ************ ---

task15 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Attend appointment at migration office",
  eu: "both"
})
task15.order = 16
task15.content = "you must register your arrival within 14 days of arriving at your new home. Within these 14 days, you must also apply for a residence permit («Aufenthaltsbewilligung») if you have not done so before. Your registration office («Einwohnermeldeamt») will tell you about all the necessary documents and the related registration fees."
task15.scope = "all"
task15.topic = permits
task15.save!

#? --- ************ ---

task16 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Wait for permit card in the post",
  eu: "both"
})
task16.order = 17
task16.content = "Your Biometric residence permit will usually arrive within 10 working days(?)"
task16.scope = "all"
task16.topic = permits
task16.save!

#? --- ************ ---

task17 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Celebrate (Optional)",
  eu: "both"
})
task17.order = 18
task17.content = "Congratualtions, You've finished your tasks, time to celebrate!"
task17.scope = "all"
task17.topic = permits
task17.save!

#? --- ************ ---

task2 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Register as resident at local Gemeinde",
  eu: "both"
})
task2.order = 10
task2.content = "You will need to register at the local Gemeinde. This will depend on your postcode and exactly where you live. It is recommended to double check by contacting them first."
task2.scope = "all"
task2.topic = permits
task2.save!

#? --- ************ ---

task3 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Receive your appointment to have biometrics taken for your permit card",
  eu: "non-eu"
})
task3.order = 11
task3.content = "Once you have registered as a resident and your permit has been approved, you will receive a letter with an appointment date and time in order to have your biometric data taken, photo taken and receive additional information on life in Switzerland."
task3.scope = "all"
task3.topic = permits
task3.save!

#? --- ************ ---

# MORE TASKS

#? --- USER TASKS ---

# puts "CREATING USER TASKS - ALL FOR NOW"

# usertask1 = UserTask.find_or_initialize_by({
#   task: task1,
#   user_profile: oliver_profile,
# })
# usertask1.status = "active"
# usertask1.save!

# usertask2 = UserTask.find_or_initialize_by({
#   task: task2,
#   user_profile: oliver_profile,
# })
# usertask2.status = "active"
# usertask2.save!

# usertask3 = UserTask.find_or_initialize_by({
#   task: task3,
#   user_profile: oliver_profile,
# })
# usertask3.status = "active"
# usertask3.save!

avatar1 = Avatar.find_or_initialize_by({
  image_url: "mango1"
})
avatar1.save!

avatar2 = Avatar.find_or_initialize_by({
  image_url: "mango2"
})
avatar2.save!

avatar3 = Avatar.find_or_initialize_by({
  image_url: "mango3"
})
avatar3.save!

avatar4 = Avatar.find_or_initialize_by({
  image_url: "mango4"
})
avatar4.save!

avatar5 = Avatar.find_or_initialize_by({
  image_url: "mango5"
})
avatar5.save!

puts "FINISHED!"
