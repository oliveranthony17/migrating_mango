puts "WIPING ALL DATA..."

User.destroy_all
UserProfile.destroy_all
Task.destroy_all
UserTask.destroy_all
Country.destroy_all
Topic.destroy_all

puts "WIPED"

#? --- COUNTRIES ---

puts "CREATING COUNTRIES"

switzerland = Country.create!({
  name: "Switzerland"
})

#? --- TOPICS ---

puts "CREATING TOPICS FOR COUNTRY SHOW PAGES"

permits = Topic.create!({
  country: switzerland,
  title: "Permits",
  content: "There are a variety of permits available in Switzerland...",
})

emergency = Topic.create!({
  country: switzerland,
  title: "Emergency",
  content: "Here are the emergency phone numbers for Switzerland...",
})

work = Topic.create!({
  country: switzerland,
  title: "Work",
  content: "Gaining employment in Switzerland can be difficult...",
})

accomodation = Topic.create!({
  country: switzerland,
  title: "Accomodation",
  content: "Accomodation in Switzerland can be competitive if looking close to the cities...",
})

pets = Topic.create!({
  country: switzerland,
  title: "Pets",
  content: "The requirements for bringing a pet to Switzerland can differ depending on the country you are travelling from...",
})

recycling = Topic.create!({
  country: switzerland,
  title: "Recycling",
  content: "Recycling is an important part of Swiss life but can be daunting at first...",
})

transport = Topic.create!({
  country: switzerland,
  title: "Transport",
  content: "Public transport is considered very good in Switzerland...",
})

health = Topic.create!({
  country: switzerland,
  title: "Health",
  content: "When moving to Switzerland it is mandatory to purchase health insurance within 3 months of arrival...",
})

#? --- CATEGORIES ---

puts "CREATING CATEGORIES BEFORE CREATING TASKS"

work = Category.new({
  title: "Work permit"
})

student = Category.new({
  title: "Student permit"
})

married = Category.new({
  title: "Family reunification (through marriage)"
})

all = Category.new({
  title: "Applies to all"
})

#? --- TASKS ---

puts "CREATING TASKS (BANK) RELATED TO COUNTRY"

task1 = Task.create!({
  country: switzerland,
  title: "Apply for your work permit using the online forms",
  content: "As you are a entering Switzerland for work, you can begin the process by completing the online application form and issuing this to your local migration office.",
  order: 1,
  scope: "non-eu",
  category: work
})

task2 = Task.create!({
  country: switzerland,
  title: "Register as resident at local Gemeinde",
  content: "In
  order to attain your permit you will need to register at the local Gemeinde. This will depend on your postcode and exactly where you live. The suggested location below is based on your postcode however it is recommended to double check by contacting them first.",
  order: 2,
  scope: "both",
  category: all
})

task3 = Task.create!({
  country: switzerland,
  title: "Receive your appointment to have biometrics taken for your permit card",
  content: "Once you have registered as a resident and your permit has been approved, you will receive a letter with an appointment date and time in order to have your biometric data taken, photo taken and receive additional information on life in Switzerland.",
  order: 3,
  scope: "both",
  category: all
})

puts "FINISHED! P.S. MAKE USER PROFILES IN LIVE DEMO TO GENERATE TASKS!!"
