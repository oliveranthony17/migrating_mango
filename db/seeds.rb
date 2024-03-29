#? --- USERS ---

puts "CREATING AVATARS"

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

#? --- COUNTRIES ---

puts "CREATING COUNTRIES"

switzerland = Country.find_or_initialize_by({
  name: "Switzerland"
})
switzerland.background = "switzerland.jpg"
switzerland.save!

united_kingdom = Country.find_or_initialize_by({
  name: "United Kingdom"
})
united_kingdom.background = "united_kingdom.jpeg"
united_kingdom.save!

romania = Country.find_or_initialize_by({
  name: "Romania"
})
romania.background = "romania.jpg"
romania.save!

greece = Country.find_or_initialize_by({
  name: "Greece"
})
greece.background = "greece.jpg"
greece.save!

lebanon = Country.find_or_initialize_by({
  name: "Lebanon"
})
lebanon.background = "lebanon.jpeg"
lebanon.save!

#? --- TOPICS ---

puts "CREATING TOPICS FOR COUNTRY SHOW PAGES"

permits = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Permits"
})
permits.icon = '<i class="fa-solid fa-id-card"></i>'

permits.content = '<div>
<div>
<div>There are a variety of permits available in Switzerland for different circumstances.</div>
<div>&nbsp;</div>
<div>For moving to Switzerland, you will likely be looking at obtaining a B permit (residence permit).</div>
<div>&nbsp;</div>
<div>For more information visit the link below: <a href="https://www.ch.ch/en/documents-and-register-extracts/permits-for-living-in-switzerland/#overview-of-permits">https://www.ch.ch/en/documents-and-register-extracts/permits-for-living-in-switzerland/#overview-of-permits</a></div>
</div>
</div>'
permits.image = "topics/permits.png"
permits.save!

emergency = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Emergency"
})
emergency.icon = "<i class='fas fa-hospital-symbol'></i>"
emergency.image = "topics/emergency.png"
emergency.content = '<div>
<div>Here are the emergency phone numbers for Switzerland:</div>
<ul>
<li>Police: 117</li>
<li>Fire Department: 118</li>
<li>Ambulance: 144</li>
<li>Swiss Rescue: 1414</li>
</ul>
<div>More information on emergency care can be found here: <a href="https://www.myswitzerland.com/en-ch/planning/about-switzerland/general-facts/emergency/emergency-numbers/">https://www.myswitzerland.com/en-ch/planning/about-switzerland/general-facts/emergency/emergency-numbers/</a></div>
</div>'
emergency.save!

work = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Work"
})
work.icon = "<i class='fas fa-briefcase'></i>"
work.image = "topics/work.png"
work.content = '<div>
<div>Gaining employment in Switzerland can be competitive and particularly difficult without a permit.</div>
<div>Speaking multiple languages (one of the 4 official languages and English) can be a good advantage.</div>
<div>Jobs can be found on the internet in particular on <a href="https://www.linkedin.com/">linkedin.com</a> and <a href="https://www.jobs.ch">jobs.ch</a></div>
<div>More information on working in Switzerland can be found here: <a href="https://www.ch.ch/en/foreign-nationals-in-switzerland/working-in-switzerland/">https://www.ch.ch/en/foreign-nationals-in-switzerland/working-in-switzerland/</a></div>
</div>'
work.save!

accommodation = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Accommodation"
})
accommodation.icon = "<i class='fas fa-home'></i>"
accommodation.image = "topics/housing.png"
accommodation.content = '<div>
<div>Finding accommodation in Switzerland can be quite a challenge when it comes to big cities.</div>
<div>&nbsp;</div>
<div>Living in a shared apartment is common among young professionals or students.</div>
<div>&nbsp;</div>
<div>A big majority of the apartments comes with a storage space which is either the attic or the basement.</div>
<div>&nbsp;</div>
<div>Bike parking spaces are also provided in most of the areas.</div>
<div>&nbsp;</div>
<div>It is reccomended to start looking for and apartment with minimum 6 months in advance.</div>
<div>&nbsp;</div>
<div>There are multiple websites for finding accommodation including <a href="https://www.homegate.ch">homegate.ch</a>, <a href="https://www.comparis.ch">comparis.ch</a>, <a href="https://www.flatfox.ch">flatfox.ch</a>, <a href="https://www.immoscout24.ch">immoscout24.ch</a>, etc. Shared accommodation options can be found on <a href="https://www.wgzimmer.ch">wgzimmer.ch</a>."</div>
</div>'
accommodation.save!

pets = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Pets"
})
pets.icon = "<i class='fas fa-paw'></i>"
pets.image = "topics/pets.png"
pets.content = '<div>
<div>The requirements for bringing a pet to Switzerland can differ depending on the country you are travelling from.</div>
<div>&nbsp;</div>
<div>If your pet already has an EU passport this should be relatively straightforward, otherwise you will need the correct vaccinations and health certificate from a vet (this process can take several months, it&rsquo;s recommended to start as soon as you decide to move).</div>
<div>&nbsp;</div>
<div>More information can be found here:&nbsp;</div>
<div><a href="https://www.blv.admin.ch/blv/en/home/tiere/reisen-mit-heimtieren/online-hilfe-hunde-katzen-frettchen.html">https://www.blv.admin.ch/blv/en/home/tiere/reisen-mit-heimtieren/online-hilfe-hunde-katzen-frettchen.html</a></div>
</div>'
pets.image = "topics/pets"
pets.save!

recycling = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Recycling"
})
recycling.icon = "<i class='fa-solid fa-recycle'></i>"
recycling.image = "topics/recycle.png"
recycling.content = '<div>
<div>Recycling is an important part of Swiss life but can be daunting at first.</div>
<div>&nbsp;</div>
<div>If recycling is done incorrectly, the waste can be refused.</div>
<div>&nbsp;</div>
<div>The exact requirements depend on each canton, however the general rules are as follows:</div>
<div>&nbsp;</div>
<div>General waste bags need to be purchased and can be left in the black bin or ready for collection on the correct day</div>
<div>&nbsp;</div>
<div>Cardboard must be collected and left by the road for the collection day</div>
<div>&nbsp;</div>
<div>Paper can be left in the paper bin (depends on where you live) or tied together with string and placed outside on the correct day</div>
<div>&nbsp;</div>
<div>Glass and aluminium can be taken to a local area and needs to be sorted upon recycling</div>
<div>&nbsp;</div>
<div>Plastics can be sorted at a local supermarket or bags can be bought for general plastic waste</div>
<div>&nbsp;</div>
<div>For more information regarding recycling please take a look here : <a href="https://www.expatica.com/ch/living/household/recycling-in-switzerland-102695/#:~:text=Recycling%20paper%20and%20cardboard%20in%20Switzerland,-90%25%20of%20the&amp;text=Since%20paper%20and%20cardboard%20are,and%20dry%20to%20be%20recycled.">https://www.expatica.com/ch/living/household/recycling-in-switzerland-102695/#:~:text=Recycling%20paper%20and%20cardboard%20in%20Switzerland,-90%25%20of%20the&amp;text=Since%20paper%20and%20cardboard%20are,and%20dry%20to%20be%20recycled.</a></div>
</div>'
recycling.save!

transport = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Transport"
})
transport.icon = "<i class='fa-solid fa-train-tram'></i>"
transport.image = "topics/transport.png"
transport.content = '<div>Switzerland has one of the best-developed public transport networks in the world.</div>
<div>&nbsp;</div>
<div>Almost any part of the country can be reached by bus or by train - even remote mountain areas.</div>
<div>&nbsp;</div>
<div>Switzerland is one of the countries where people use public transport the most, especially the train.</div>
<div>&nbsp;</div>
<div>A variety of tickets can be purchased including supersaver tickets, weekly, monthly or annual passes, and a half fare travelcard for 50% off all tickets.</div>
<div>&nbsp;</div>
<div>You can find everything regarding the public transport in Switzerland accesing the link below:&nbsp;</div>
<div><a href="https://www.sbb.ch/en">sbb.ch/en</a></div>'
transport.save!

health = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Health"
})
health.icon = '<i class="fa-solid fa-heart-pulse"></i>'
health.image = "topics/health.png"
health.content = '<div>
<div>When moving to Switzerland it is mandatory to purchase health insurance within 3 months of arrival.</div>
<div>&nbsp;</div>
<div>There are different levels of cover at corresponding cost.</div>
<div>&nbsp;</div>
<div>It is recommended to compare providers, cost and cover using one of the many comparison websites. Among the most visited are:</div>
<div><a href="https://en.comparis.ch/">comparis.ch/</a></div>
<div><a href="https://www.versicherung-schweiz.ch/">versicherung-schweiz.ch/</a></div>
</div>'
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


#USER 1
puts "CREATING USER AND USER PROFILE"

oliver = User.find_or_initialize_by({
  email: "oliver@lewagon.com"
})
oliver.password = "lewagon"
oliver.save!

oliver_profile = UserProfile.create({
  user: oliver,
  foreign_address: "Bahnhofstrasse 1, Zürich",
  eu_status: false,
  entry_method: "Family reunification",
  has_job_offer: false,
  has_study_offer: false,
  has_relative: true,
  username: "Oli_Poly17",
  avatar: avatar1
})
oliver_profile.save!

#USER 2
puts "CREATING USER AND USER PROFILE"

john = User.find_or_initialize_by({
  email: "john@lewagon.com"
})
john.password = "lewagon"
john.save!

john_profile = UserProfile.create({
  user: john,
  foreign_address: "Mangostreet 24, Zürich",
  eu_status: false,
  entry_method: "Family reunification",
  has_job_offer: false,
  has_study_offer: false,
  has_relative: true,
  username: "n00bMaStEr69",
  avatar: avatar5
})
john_profile.save!

#USER 3
puts "CREATING USER AND USER PROFILE"

marlin = User.find_or_initialize_by({
  email: "marlin@lewagon.com"
})
marlin.password = "lewagon"
marlin.save!

marlin_profile = UserProfile.create({
  user: marlin,
  foreign_address: "1 Bahnhofstrasse, Zürich",
  eu_status: false,
  entry_method: "Study",
  has_job_offer: false,
  has_study_offer: true,
  has_relative: true,
  username: "Xx@MarlinDarling@xX",
  avatar: avatar3
})
marlin_profile.save!

#USER 4
puts "CREATING USER AND USER PROFILE"

omar = User.find_or_initialize_by({
  email: "jeff@lewagon.com"
})
omar.password = "lewagon"
omar.save!

omar_profile = UserProfile.create({
  user: omar,
  foreign_address: "Badenerstrasse 626, Zürich",
  eu_status: false,
  entry_method: "Work",
  has_job_offer: true,
  username: "~LordPepe7~",
  has_study_offer: false,
  has_relative: true,
  avatar: avatar4
})
omar_profile.save!


puts "CREATING USER TASKS"

def create_user_tasks(user_profile)
  if user_profile.eu_status?
    case user_profile.entry_method
    when "Work"
      if user_profile.has_job_offer?
        @tasks = Task.where(scope: ["work", "all"], eu: ["eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["work", "work_find", "all"], eu: ["eu", "both"]).order(order: :asc)
      end
    when "Study"
      if user_profile.has_study_offer?
        @tasks = Task.where(scope: ["study", "all"], eu: ["eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["study", "study_find", "all"], eu: ["eu", "both"]).order(order: :asc)
      end
    else # family
      if user_profile.has_relative?
        @tasks = Task.where(scope: ["family", "all"], eu: ["eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["family", "family_find", "all"], eu: ["eu", "both"]).order(order: :asc)
      end
    end
  else
    case user_profile.entry_method
    when "Work"
      if user_profile.has_job_offer
        @tasks = Task.where(scope: ["work", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["work", "work_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      end
    when "Study"
      if user_profile.has_study_offer
        @tasks = Task.where(scope: ["study", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["study", "study_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      end
    else # family
      if user_profile.has_relative
        @tasks = Task.where(scope: ["family", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      else
        @tasks = Task.where(scope: ["family", "family_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
      end
    end
  end
  @tasks.each do |task|
      UserTask.create({
      task: task,
      user_profile: user_profile,
      status: task.order == 1 || task.order == 2 ? "Active" : "Upcoming"
    })
  end
end

oliver_tasks = create_user_tasks(oliver_profile)
oliver_profile.save!

john_tasks = create_user_tasks(john_profile)
john_profile.save!

marlin_tasks = create_user_tasks(marlin_profile)
marlin_profile.save!

omar_tasks = create_user_tasks(omar_profile)
omar_profile.save!

puts "CREATING COMMENTS!"

comment1 = Comment.find_or_initialize_by({
  title: "Exotic Bird"
})
comment1.content = "Hello everyone. Im moving from Bali to Switzerland in a few months and i was wondering if I could bring my parrot. What are the requirements for such a category?"
comment1.user = marlin
comment1.topic = pets
comment1.save!

comment2 = Comment.find_or_initialize_by({
  title: "Looking for flat in oerlikon!"
})
comment2.content = "Holla everybody!! Im looking for a nice flat in Oerlikon. 30sqm will do1"
comment2.user = marlin
comment2.topic = accommodation
comment2.save!

comment3 = Comment.find_or_initialize_by({
  title: "Whats the number for poisoning...I need helllnyndtty"
})
comment3.content = "blank"
comment3.user = oliver
comment3.topic = emergency
comment3.save!


comment4 = Comment.find_or_initialize_by({
  title: "Permit Approval"
})
comment4.content = "Anyone knows how many days the permit needs to get approved?"
comment4.user = john
comment4.topic = permits
comment4.save!


comment5 = Comment.find_or_initialize_by({
  title: "RE: Exotic Bird"
})
comment5.content = "@~LordPepe7~: Well i think you can. You can check on the website above. But why not a goat?"
comment5.user = omar
comment5.topic = pets
comment5.save!


comment6 = Comment.find_or_initialize_by({
  title: "RE: Whats the number for poisoning...I need helllnyndtty"
})
comment6.content = "I dont know if im late but its :145"
comment6.user = john
comment6.topic = emergency
comment6.save!


comment7 = Comment.find_or_initialize_by({
  title: "Trams crash everyday"
})
comment7.content = "Why the hell do the trams crash everyday?"
comment7.user = oliver
comment7.topic = transport
comment7.save!


comment8 = Comment.find_or_initialize_by({
  title: "RE: Trams crash everyday"
})
comment8.content = "@Oli_Poli17 Well maybe if you drive like you want to rush to the toilet..."
comment8.user = oliver
comment8.topic = transport
comment8.save!


comment9 = Comment.find_or_initialize_by({
  title: "RE:RE: Trams crash everyday"
})
comment9.content = "Admin : Please keep it civilizated or it will lead to a ban."
comment9.user = john
comment9.topic = transport
comment9.save!


puts "FINISHED!"
