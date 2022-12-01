#? --- USERS ---

puts "CREATING USER AND USER PROFILE"

oliver = User.find_or_initialize_by({
  email: "oliver@lewagon.com"
})
oliver.password = "lewagon"
oliver.save!

oliver_profile = UserProfile.find_or_initialize_by({
  user: oliver
})
oliver_profile.foreign_address = "Schloesslistrasse, Ebikon, 6030"
oliver_profile.eu_status = false
oliver_profile.entry_method = "family"
oliver_profile.has_job_offer = false
oliver_profile.has_study_offer = false
oliver_profile.has_relative = true
oliver_profile.save!

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
work.content = "Here are the emergency phone numbers for Switzerland..."
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

#? --- ************ ---

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

# didn't get picked up in user with eu, work, job_offer

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

#? --- ************ ---

task1 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Permit approved",
  eu: "both"
})
task1.order = 3
task1.content = "Congratulations! Your permit has been approved. At this point you can begin the next tasks and start to think about the move to Switzerland!"
task1.scope = "all"
task1.topic = permits
task1.save!

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

puts "FINISHED!"
