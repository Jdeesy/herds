steve = User.create!(username: "steve", email: "stev@mail.com", password: "password")
bob = User.create!(username: "bob", email: "bob@mail.com", password: "password")
joy = User.create!(username: "joy", email: "joy@mail.com", password: "password")
robin = User.create!(username: "robin", email: "rob@mail.com", password: "password")

turtle = Herd.create!(name: "turtle", activity: "swimming")
bear = Herd.create!(name: "bear", activity: "hibernating")
sloth = Herd.create!(name: "sloth", activity: "sleeping")
owl = Herd.create!(name: "owl", activity: "reading")

user_herd1 = UsersHerd.create!(user: steve, herd: turtle)
user_herd2 = UsersHerd.create!(user: steve, herd: bear)
user_herd3 = UsersHerd.create!(user: steve, herd: sloth)
user_herd4 = UsersHerd.create!(user: bob, herd: turtle)
user_herd5 = UsersHerd.create!(user: joy, herd: sloth)
user_herd6 = UsersHerd.create!(user: joy, herd: owl)
user_herd7 = UsersHerd.create!(user: joy, herd: turtle)
user_herd8 = UsersHerd.create!(user: robin, herd: bear)
user_herd9 = UsersHerd.create!(user: robin, herd: sloth)

me = User.create!(username: "jd", email: "j@d.com", password: "password")
my_herd1 = UsersHerd.create!(user: me, herd: turtle)
my_herd2 = UsersHerd.create!(user: me, herd: bear)
my_herd3 = UsersHerd.create!(user: me, herd: sloth)
my_herd4 = UsersHerd.create!(user: me, herd: owl)

