#? --- USERS ---

puts "CREATING USER AND USER PROFILE"

oliver = User.find_or_initialize_by({
  email: "oliver@lewagon.com"
  # password: "lewagon"
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
  name: "Switzerland"
})
switzerland.save!

#? --- TOPICS ---

puts "CREATING TOPICS FOR COUNTRY SHOW PAGES"

permits = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Permits"
})

permits.content = "There are a variety of permits available in Switzerland..."
permits.save!

emergency = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Emergency"
})

emergency.content = "Here are the emergency phone numbers for Switzerland..."
emergency.save!

work = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Work"
})

work.content = "Here are the emergency phone numbers for Switzerland..."
work.save!

accommodation = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Accommodation"
})

accommodation.content = "Accommodation in Switzerland can be competitive if looking close to the cities..."
accommodation.save!

pets = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Pets"
})

pets.content = "The requirements for bringing a pet to Switzerland can differ depending on the country you are travelling from..."
pets.save!

recycling = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Recycling"
})

recycling.content = "Recycling is an important part of Swiss life but can be daunting at first..."
recycling.save!

transport = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Transport"
})

transport.content = "Public transport is considered very good in Switzerland..."
transport.save!

health = Topic.find_or_initialize_by({
  country: switzerland,
  title: "Health"
})

health.content = "When moving to Switzerland it is mandatory to purchase health insurance within 3 months of arrival..."
health.save!

#? --- CATEGORIES ---

puts "CREATING CATEGORIES BEFORE CREATING TASKS"

work = Category.find_or_initialize_by({
  title: "Work permit"
})
work.save!

student = Category.find_or_initialize_by({
  title: "Student permit"
})
student.save!

married = Category.find_or_initialize_by({
  title: "Family reunification (through marriage)"
})
married.save!

all = Category.find_or_initialize_by({
  title: "Applies to all"
})
all.save!

#? --- TASKS ---

puts "CREATING TASKS (BANK) RELATED TO COUNTRY"

task1 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Apply for your work permit using the online forms",
  order: 1
})

task1.content = "As you are a entering Switzerland for work, you can begin the process by completing the online application form and issuing this to your local migration office."
task1.scope = "non-eu"
task1.category = work
task1.save!

task2 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Register as resident at local Gemeinde",
  order: 2
})

task2.content = "In order to attain your permit you will need to register at the local Gemeinde. This will depend on your postcode and exactly where you live. The suggested location below is based on your postcode however it is recommended to double check by contacting them first."
task2.scope = "both"
task2.category = all
task2.save!

task3 = Task.find_or_initialize_by({
  country: switzerland,
  title: "Receive your appointment to have biometrics taken for your permit card",
  order: 3
})

task3.content = "Once you have registered as a resident and your permit has been approved, you will receive a letter with an appointment date and time in order to have your biometric data taken, photo taken and receive additional information on life in Switzerland."
task3.scope = "both"
task3.category = all
task3.save!

#? --- USER TASKS ---

puts "CREATING USER TASKS - ALL FOR NOW"

usertask1 = UserTask.find_or_initialize_by({
  task: task1,
  user_profile: oliver_profile,
})
usertask1.status = "active"
usertask1.save!

usertask2 = UserTask.find_or_initialize_by({
  task: task2,
  user_profile: oliver_profile,
})
usertask2.status = "active"
usertask2.save!

usertask3 = UserTask.find_or_initialize_by({
  task: task3,
  user_profile: oliver_profile,
})
usertask3.status = "active"
usertask3.save!

puts "FINISHED!"
