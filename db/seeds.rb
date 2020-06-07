
shara = User.create(name: "Shara", email: "shara@gmail.com", password: "georgia")
sydney = User.create(name: "Sydney", email: "sydney@aol.com", password:"newroc")
awa = User.create(name: "Awa", email:"awa@hotmail.com", password:"ghana")

Period.create(month: "June", start_day: "4", note:"I had a lot of pms symptoms this month before my actual cycle", user_id: shara.id)
Period.create(month: "April", start_day: "16", note:"My period started today. No real symptoms. Yay!", user_id: sydney.id)
Period.create(month: "October", start_day: "25", note:"Day 1 of my period has been really painful. Ugh!!", user_id: awa.id)
Period.create(month: "January", start_day: "23", note:"Made sure to eat lots of pineapple and grapefruit today.", user_id: awa.id)
