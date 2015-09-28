# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "Max Millington", email: "MaxMillington89@gmail.com", password: "password")


# Location.create(name: "Project Angel Heart", address: "4950 Washington St. Denver, CO 80216", description: "")
# Location.create(name: "Samaritan House ", address: "2301 Lawrence St, Denver, CO 80205", description: "")

Number.create(phone_number: "570-690-2302")




#food-lines

Location.create(name: "Christ Body Ministries", address: "850 Lincoln Street Denver, CO 80203",
                monday: "Hot meals between 12:30-3pm.",
                tuesday: "10 am-3pm", wednesday: "10 am-3pm",
                thursday: "10 am-3pm", friday: "8:30-12pm",
                saturday: "Grocery bags at 16th & York on Saturday starting at 2pm")

Location.create(name: "Holy Ghost Church", address: "1900 California Street Denver, CO",
                monday: "Provides sandwiches between 10-10:30 am",
                tuesday: "Provides sandwiches between 10-10:30 am",
                wednesday: "Provides sandwiches between 10-10:30 am",
                thursday: "Provides sandwiches between 10-10:30 am",
                friday: "Provides sandwiches between 10-10:30 am",
                saturday: "Provides sandwiches between 10-10:30 am")

Location.create(name: "Volunteers of America", address: "2877 Lawrence Street Denver, CO",
                monday: "Breakfast 8am. Lunch 11:30-12pm. Dinner 5-5:30pm.",
                tuesday: "Breakfast 8am. Lunch 11:30-12pm. Dinner 5-5:30pm.",
                wednesday: "Breakfast 8am. Lunch 11:30-12pm. Dinner 5-5:30pm.",
                thursday: "Breakfast 8am. Lunch 11:30-12pm. Dinner 5-5:30pm.",
                sunday: "Lunch 12 pm.")

Location.create(name: "Saint Elizabeth’s Church", address: "1060 St Francis Way, Denver, CO 80204",
                monday: "Soup and sandwiches 11–11:30 am.",
                tuesday: "Soup and sandwiches 11–11:30 am.",
                wednesday: "Soup and sandwiches 11–11:30 am.",
                thursday: "Soup and sandwiches 11–11:30 am.",
                friday: "Soup and sandwiches 11–11:30 am.",
                saturday: "Soup and sandwiches 11–11:30 am.",
                sunday: "Soup and sandwiches 11–11:30 am.",)

Location.create(name: "Grant Avenue Street Reach ", address: "1600 Grant Street, Denver, CO 80205",
                monday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                tuesday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                wednesday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                thursday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                friday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                saturday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.",
                sunday: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.")

Location.create(name: "Catholic Worker Soup Kitchen", address: "2323 Curtis Street Denver, CO",
                wednesday: "Lunch between 3 pm and 4 pm",
                thursday: "Lunch between 3 pm and 4 pm",
                friday: "Lunch between 3 pm and 4 pm")

Location.create(name: "Trinity United Methodist Church", address: "1820 Broadway, Denver, CO",
                wednesday: "Lunch between 11:45 am and 12:15 pm",
                thursday: "Lunch between 11:45 am and 12:15 pm",
                friday: "Lunch between 11:45 am and 12:15 pm")

Location.create(name: "Senior Support Services", address: "846 East 18th Ave, Denver, CO",
                monday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                tuesday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                wednesday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                thursday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                friday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                saturday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.",
                sunday: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.")

Location.create(name: "Basilica of the Immaculate Conception", address: "1530 Logan St, Denver, CO",
                monday: "Provides sandwiches at 8 am",
                tuesday: "Provides sandwiches at 8 am",
                wednesday: "Provides sandwiches at 8 am",
                thursday: "Provides sandwiches at 8 am",
                friday: "Provides sandwiches at 8 am")

Location.create(name: "St. Paul's United Methodist Church", address: "1615 Ogden St, Denver, CO",
                sunday: "Breakfast 8-9 am")

Location.create(name: "Denver Rescue Mission", address: "1130 Park Ave W, Denver, CO 80205",
                monday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                tuesday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                wednesday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                thursday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                friday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                saturday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner",
                sunday: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner")
