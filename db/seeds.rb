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
  name: "Switzerland"
})
switzerland.save!

united_kingdom = Country.find_or_initialize_by({
  name: "United Kingdom"
})
united_kingdom.save!

romania = Country.find_or_initialize_by({
  name: "Romania"
})
romania.save!

greece = Country.find_or_initialize_by({
  name: "Greece"
})
greece.save!

lebanon = Country.find_or_initialize_by({
  name: "Lebanon"
})
lebanon.save!

#? --- TOPICS ---

puts "CREATING TOPICS FOR COUNTRY SHOW PAGES"

permits = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Permits"
})
permits.icon = '<i class="fa-solid fa-id-card"></i>'
permits.content = "There are a variety of permits available in Switzerland for different circumstances. For moving to Switzerland, you will likely be looking at obtaining a B permit (residence permit). For more information visit the link below: \nhttps://www.ch.ch/en/documents-and-register-extracts/permits-for-living-in-switzerland/#overview-of-permits"
permits.image = "topics/permits.png"
permits.save!

emergency = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Emergency"
})
emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
emergency.content = "Here are the emergency phone numbers for Switzerland: \nPolice: 117 \nFire: 188 \nAmbulance: 144 \nSwiss Rescue: 1414. \n\nMore information on emergency care can be found here: \nhttps://www.myswitzerland.com/en-ch/planning/about-switzerland/general-facts/emergency/emergency-numbers/"
emergency.image = "topics/emergency.png"
emergency.save!

work = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Work"
})
work.icon = "<i class='fas fa-briefcase'></i>"
work.content = "Gaining employment in Switzerland can be competitive and particularly difficult without a permit. Speaking multiple languages (one of the 4 official languages and English) can be a good advantage. \n\nJobs can be found on the internet in particular LinkedIn and Jobs.ch. \n\nMore information on working in Switzerland can be found here: \nhttps://www.ch.ch/en/foreign-nationals-in-switzerland/working-in-switzerland/#"
work.image = "topics/work.png"
work.save!

accommodation = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Accommodation"
})
accommodation.icon = "<i class='fas fa-home'></i>"
accommodation.content = "Finding accommodation in Switzerland can be quite a challenge when it comes to big cities. Living in a shared apartment is common among young professionals or students. A big majority of the apartments comes with a storage space which is either the attic or the basement. Bike parking spaces are also provided in most of the areas. It is reccomended to start looking for and apartment with minimum 6 months in advance. \n\nThere are multiple websites for finding accommodation including homegate.ch, comparis.ch, https://flatfox.ch/, immoscout24.ch, etc. Shared accommodation options can be found on wgzimmer.ch."
accommodation.image = "topics/housing.png"
accommodation.save!

pets = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Pets"
})
pets.icon = "<i class='fas fa-paw'></i>"
pets.content = "The requirements for bringing a pet to Switzerland can differ depending on the country you are travelling from. If your pet already has an EU passport this should be relatively straightforward, otherwise you will need the correct vaccinations and health certificate from a vet which can take multiple months. \n\nMore information can be found here: https://www.blv.admin.ch/blv/en/home/tiere/reisen-mit-heimtieren/hunde-katzen-und-frettchen.html."
pets.image = "topics/pets.png"
pets.save!

recycling = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Recycling"
})
recycling.icon = "<i class='fa-solid fa-recycle'></i>"
recycling.content = "Recycling is an important part of Swiss life but can be daunting at first. If recycling is done incorrectly, the waste can be refused. The exact rules depend on each Kanton however the general rules are as follows: \n- General waste bags need to be purchased and can be left in the black bin or ready for collection on the correct day \nCardboard must be collected and left by the road for the collection day \nPaper can be left in the paper bin or tied together with string \nGlass and aluminium can be taken to a local area and needs to be sorted \nPlastics can be sorted at a local supermarket or bags can be bought for general plastic waste"
recycling.image = "topics/recycle.png"
recycling.save!

transport = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Transport"
})
transport.icon = "<i class='fa-solid fa-train-tram'></i>"
transport.content = "Public transport is considered to be very good in Switzerland. Trains are good quality and usually on time. A variety of tickets can be purchased including supersaver tickets, weekly, monthly or annual passes, and a halbtax card for 50% off all tickets."
transport.image = "topics/transport.png"
transport.save!

health = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Health"
})
health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
health.content = "When moving to Switzerland it is mandatory to purchase health insurance within 3 months of arrival. There are different levels of cover at corresponding cost. It is recommended to compare providers, cost and cover using one of the many comparison websites."
health.image = "topics/health.png"
health.save!

#------------------------------#

permits_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Permits"
})
permits_uk.icon = '<i class="fa-solid fa-id-card"></i>'
permits_uk.content = "There are a variety of permits available in the United Kingdom..."
permits_uk.image = "topics/permits.png"
permits_uk.save!

emergency_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Emergency"
})
emergency_uk.icon = "<i class='fas fa-hospital-symbol'></i>"
emergency_uk.content = "Here are the emergency phone numbers for the United Kingdom..."
emergency_uk.image = "topics/emergency.png"
emergency_uk.save!

work_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Work"
})
work_uk.icon = "<i class='fas fa-briefcase'></i>"
work_uk.content = "Gaining employment in the United Kingdom can be difficult..."
work_uk.image = "topics/work.png"
work_uk.save!

accommodation_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Accommodation"
})
accommodation_uk.icon = "<i class='fas fa-home'></i>"
accommodation_uk.content = "Accommodation in the United Kingdom can be competitive if looking close to the cities..."
accommodation_uk.image = "topics/housing.png"
accommodation_uk.save!

pets_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Pets"
})
pets_uk.icon = "<i class='fas fa-paw'></i>"
pets_uk.content = "The requirements for bringing a pet to the United Kingdom can differ depending on the country you are travelling from..."
pets_uk.image = "topics/pets.png"
pets_uk.save!

recycling_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Recycling"
})
recycling_uk.icon = "<i class='fa-solid fa-recycle'></i>"
recycling_uk.content = "Recycling is an important part of British life but can be daunting at first..."
recycling_uk.image = "topics/recycle.png"
recycling_uk.save!

transport_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Transport"
})
transport_uk.icon = "<i class='fa-solid fa-train-tram'></i>"
transport_uk.content = "Public transport is considered very good in the United Kingdom..."
transport_uk.image = "topics/transport.png"
transport_uk.save!

health_uk = Topic.find_or_initialize_by({
  country: united_kingdom,
  title: "Health"
})
health_uk.icon = '<i class="fa-solid fa-heart-pulse"></i>'
health_uk.content = "When moving to the United Kingdom it is mandatory to purchase health insurance within 3 months of arrival..."
health_uk.image = "topics/health.png"
health_uk.save!

#---------------------#

rom_permits = Topic.find_or_initialize_by({
  country: romania,
  title: "Permits"
})
rom_permits.icon = '<i class="fa-solid fa-id-card"></i>'
rom_permits.content = "There are a variety of permits available in Romania..."
rom_permits.image = "topics/permits.png"
rom_permits.save!

rom_emergency = Topic.find_or_initialize_by({
  country: romania,
  title: "Emergency"
})
rom_emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
rom_emergency.content = "Here are the emergency phone numbers for Romania..."
rom_emergency.image = "topics/emergency.png"
rom_emergency.save!

rom_work = Topic.find_or_initialize_by({
  country: romania,
  title: "Work"
})
rom_work.icon = "<i class='fas fa-briefcase'></i>"
rom_work.content = "Gaining employment in Romania can be difficult..."
rom_work.image = "topics/work.png"
rom_work.save!

rom_accommodation = Topic.find_or_initialize_by({
  country: romania,
  title: "Accommodation"
})
rom_accommodation.icon = "<i class='fas fa-home'></i>"
rom_accommodation.content = "Accommodation in Romania can be competitive if looking close to the cities..."
rom_accommodation.image = "topics/housing.png"
rom_accommodation.save!

rom_pets = Topic.find_or_initialize_by({
  country: romania,
  title: "Pets"
})
rom_pets.icon = "<i class='fas fa-paw'></i>"
rom_pets.content = "The requirements for bringing a pet to Romania can differ depending on the country you are travelling from..."
rom_pets.image = "topics/pets.png"
rom_pets.save!

rom_recycling = Topic.find_or_initialize_by({
  country: romania,
  title: "Recycling"
})
rom_recycling.icon = "<i class='fa-solid fa-recycle'></i>"
rom_recycling.content = "Recycling is an important part of Romanian life but can be daunting at first..."
rom_recycling.image = "topics/recycle.png"
rom_recycling.save!

rom_transport = Topic.find_or_initialize_by({
  country: romania,
  title: "Transport"
})
rom_transport.icon = "<i class='fa-solid fa-train-tram'></i>"
rom_transport.content = "Public transport is considered very good in Romania..."
rom_transport.image = "topics/transport.png"
rom_transport.save!

rom_health = Topic.find_or_initialize_by({
  country: romania,
  title: "Health"
})
rom_health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
rom_health.content = "When moving to Romania it is mandatory to purchase health insurance within 3 months of arrival..."
rom_health.image = "topics/health.png"
rom_health.save!

#---------------------#

gr_permits = Topic.find_or_initialize_by({
  country: greece,
  title: "Permits"
})
gr_permits.icon = '<i class="fa-solid fa-id-card"></i>'
gr_permits.content = "There are a variety of permits available in Greece..."
gr_permits.image = "topics/permits.png"
gr_permits.save!

gr_emergency = Topic.find_or_initialize_by({
  country: greece,
  title: "Emergency"
})
gr_emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
gr_emergency.content = "Here are the emergency phone numbers for Greece..."
gr_emergency.image = "topics/emergency.png"
gr_emergency.save!

gr_work = Topic.find_or_initialize_by({
  country: greece,
  title: "Work"
})
gr_work.icon = "<i class='fas fa-briefcase'></i>"
gr_work.content = "Gaining employment in Greece can be difficult..."
gr_work.image = "topics/work.png"
gr_work.save!

gr_accommodation = Topic.find_or_initialize_by({
  country: greece,
  title: "Accommodation"
})
gr_accommodation.icon = "<i class='fas fa-home'></i>"
gr_accommodation.content = "Accommodation in Greece can be competitive if looking close to the cities..."
gr_accommodation.image = "topics/housing.png"
gr_accommodation.save!

gr_pets = Topic.find_or_initialize_by({
  country: greece,
  title: "Pets"
})
gr_pets.icon = "<i class='fas fa-paw'></i>"
gr_pets.content = "The requirements for bringing a pet to greece can differ depending on the country you are travelling from..."
gr_pets.image = "topics/pets.png"
gr_pets.save!

gr_recycling = Topic.find_or_initialize_by({
  country: greece,
  title: "Recycling"
})
gr_recycling.icon = "<i class='fa-solid fa-recycle'></i>"
gr_recycling.content = "Recycling is an important part of Greek life but can be daunting at first..."
gr_recycling.image = "topics/recycle.png"
gr_recycling.save!

gr_transport = Topic.find_or_initialize_by({
  country: greece,
  title: "Transport"
})
gr_transport.icon = "<i class='fa-solid fa-train-tram'></i>"
gr_transport.content = "Public transport is considered very good in Greece..."
gr_transport.image = "topics/transport.png"
gr_transport.save!

gr_health = Topic.find_or_initialize_by({
  country: greece,
  title: "Health"
})
gr_health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
gr_health.content = "When moving to Greece it is mandatory to purchase health insurance within 3 months of arrival..."
gr_health.image = "topics/health.png"
gr_health.save!

#---------------------#

leb_permits = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Permits"
})
leb_permits.icon = '<i class="fa-solid fa-id-card"></i>'
leb_permits.content = "There are a variety of permits available in Lebanon..."
leb_permits.image = "topics/permits.png"
leb_permits.save!

leb_emergency = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Emergency"
})
leb_emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
leb_emergency.content = "Here are the emergency phone numbers for Lebanon, you should not count on them"
leb_emergency.image = "topics/emergency.png"
leb_emergency.save!

leb_work = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Work"
})
leb_work.icon = "<i class='fas fa-briefcase'></i>"
leb_work.content = "Gaining employment in Lebanon can be difficult as owners will often only hire their relatives no matter if they are fit to do that job or not"
leb_work.image = "topics/work.png"
leb_work.save!

leb_accommodation = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Accommodation"
})
leb_accommodation.icon = "<i class='fas fa-home'></i>"
leb_accommodation.content = "Accommodation in Lebanon can be hard if looking close to the cities due to the massive amount of migrants"
leb_accommodation.image = "topics/housing.png"
leb_accommodation.save!

leb_pets = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Pets"
})
leb_pets.icon = "<i class='fas fa-paw'></i>"
leb_pets.content = "The requirements for bringing a pet to Lebanon can differ depending on the country you are travelling from..."
leb_pets.image = "topics/pets.png"
leb_pets.save!

leb_recycling = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Recycling"
})
leb_recycling.icon = "<i class='fa-solid fa-recycle'></i>"
leb_recycling.content = "Recycling not is an important part of Lebanese life but can be daunting at first..."
leb_recycling.image = "topics/recycle.png"
leb_recycling.save!

leb_transport = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Transport"
})
leb_transport.icon = "<i class='fa-solid fa-train-tram'></i>"
leb_transport.content = "Public transport only exists in the form of buses in Lebanon..."
leb_transport.image = "topics/transport.png"
leb_transport.save!

leb_health = Topic.find_or_initialize_by({
  country: lebanon,
  title: "Health"
})
leb_health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
leb_health.content = "Good luck"
leb_health.image = "topics/health.png"
leb_health.save!

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
task1_work.content = "Apply for jobs! As you are in the EU you can move to Switzerland for three months to look for work however we would recommend getting a job offer first."
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
task3_work.content = "As you are a entering Switzerland for work, you will need to apply for a permit using your work contract. As an eu-member this should be accepted and there are no limit to permits issued to EU/EFTA citizens."
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
task4_work.content = "As you are a entering Switzerland for work, you can begin the process by completing the online application form and issuing this to your local migration office. As a non-eu member there are many reqiurements and a limit on the permits issued."
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
task1_study_find_non_eu.scope = "study_find"
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
  title: "Apply for study permit",
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
  title: "Check family reunification rules",
  eu: "both"
})
task1_family_eu.order = 1
task1_family_eu.content = "If the permit holder is from an EU/ETFA country, they may bring their spouse or registered partner, children or grandchildren under the age of 21 or dependent, and (unless you are in training) your dependent parents and grandparents. Otherwise, it is not guaranteed that a spouse can be brought too. It is recommended to check the rules for your specific situation or speak to an adviser. \n\nMore information can be found here: https://www.ch.ch/en/foreign-nationals-in-switzerland/living-in-switzerland/family-reunification/"
task1_family_eu.scope = "family"
task1_family_eu.topic = permits
task1_family_eu.save!

#? --- ************ --

task1_family_non_eu = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for family reunification permit",
  eu: "both"
})
task1_family_non_eu.order = 2
task1_family_non_eu.content = "After consulting the rules for your specific situation, a permit application can be opened using the correct form or by contacting the local Kanton. \n\nhttps://www.sem.admin.ch/sem/en/home/sem/kontakt/kantonale_behoerden/adressen_kantone_und.html"
task1_family_non_eu.scope = "family"
task1_family_non_eu.topic = permits
task1_family_non_eu.save!

#? --- ************ --

# study_find > study > family_find > family > all


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
  title: "Plan move",
  eu: "both"
})
task4.order = 5
task4.content = "Plan everything you would like to bring to Switzerland, and things you will either want to sell or keep in storage. Get in contact with a moving company and arrange the transfer. "
task4.scope = "all"
task4.topic = transport
task4.save!

#? --- ************ ---

task5 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Pets (optional)",
  eu: "both"
})
task5.order = 6
task5.content = "You must check whether the animal you are bringing to switzerland is considered a 'pet'. Dogs, cats and ferrets and birds are subject to particular animal health regulations when travelling because there is a danger of their introducing diseases from another country. Almost all pets that meet the definition can enter Switzerland from any country without approval from the veterinary health authority or a health certificate. Special conditions apply to dogs, cats, ferrets and birds. Not more than 5 pets may be imported from third countries."
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
task6.topic = accommodation
task6.save!

#? --- ************ ---

task7 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Notifiy energy provider of move date (for future address)",
  eu: "both"
})
task7.order = 8
task7.content = "Contact your local energy supplier before you move to let them know the date of your move as well as the address you are moving to."
task7.scope = "all"
task7.topic = accommodation
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
task8.topic = accommodation
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
task10.topic = health
task10.save!

#? --- ************ ---

task11 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up mobile phone",
  eu: "both"
})
task11.order = 12
task11.content = "A mobile phone is recommended for access to Swiss apps (Such as for weather or for public transport)"
task11.scope = "all"
task11.topic = accommodation
task11.save!

#? --- ************ ---

task12 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Set up internet",
  eu: "both"
})
task12.order = 13
task12.content = "Internet is recommeneded as it would not be possible to use the previously suggessted apps"
task12.scope = "all"
task12.topic = accommodation
task12.save!

#? --- ************ ---

task13 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Exchange driving license (optional)",
  eu: "both"
})
task13.order = 14
task13.content = "Persons wishing to obtain a Swiss driving license in exchange for their foreign driving license are subject, with some exceptions, to an examination which consists of a test run for which a fee is charged and, if successful, a fee for the issue of the Swiss driving license."
task13.scope = "all"
task13.topic = transport
task13.save!

#? --- ************ ---

task14 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Receive invitation to migration office for biometrics",
  eu: "both"
})
task14.order = 15
task14.content = "Once you have registered as a resident and your permit has been approved, you will receive a letter with an appointment date and time in order to have your biometric data taken, photo taken and receive additional information on life in Switzerland."
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
task15.content = "You must register your arrival within 14 days of arriving at your new home. Within these 14 days, you must also apply for a residence permit («Aufenthaltsbewilligung») if you have not done so before. Your registration office will tell you about all the necessary documents and the related registration fees."
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
task16.content = "Your Biometric residence permit will usually arrive within 5-10 working days to your registered address."
task16.scope = "all"
task16.topic = permits
task16.save!

#? --- ************ ---

task17 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Celebrate!",
  eu: "both"
})
task17.order = 18
task17.content = "Congratulations. You have finished your tasks and should be ready for your move - time to celebrate!"
task17.scope = "all"
task17.topic = permits
task17.save!

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
  image_url: "mango1.png"
})
avatar1.save!

avatar2 = Avatar.find_or_initialize_by({
  image_url: "mango2.png"
})
avatar2.save!

avatar3 = Avatar.find_or_initialize_by({
  image_url: "mango3.png"
})
avatar3.save!

avatar4 = Avatar.find_or_initialize_by({
  image_url: "mango4.png"
})
avatar4.save!

avatar5 = Avatar.find_or_initialize_by({
  image_url: "mango5.png"
})
avatar5.save!

puts "FINISHED!"
