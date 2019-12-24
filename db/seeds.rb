# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'MattC', first_name: 'Matthew', last_name: 'Clark', password: 'Pwnfish2010')
user2 = User.create(username: 'Charles', first_name: 'Sergey', last_name: 'Dmitriev', password: 'testing')

test1 = Test.create(name: 'Warm Up', content: 'After a team scores a goal, the kick-off is taken by the other team. A throw-in is taken when the ball crosses a sideline and leaves the field. The two basic soccer rules for a proper throw-in are to have both feet on the ground and to throw the ball with both hands over the head.', language: 'English', difficulty: 'Easy')
test2 = Test.create(name: 'Good Practice', content: 'A wolf comes upon a lamb and, in order to justify taking its life, accuses it of various misdemeanours, all of which the lamb proves to be impossible. Losing patience, the wolf says the offences must have been committed by someone else in the family and that it does not propose to delay its meal by enquiring any further. The morals drawn are that the tyrant can always find an excuse for his tyranny, and that the unjust will not listen to the reasoning of the innocent.', language: 'English', difficulty: 'Medium')
test3 = Test.create(name: 'Expert Typist', content: 'Zebras are several species of African equids (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small harems to large herds. Unlike their closest relatives the horses and donkeys, zebras have never been truly domesticated. The unique stripes of zebras make them one of the animals most familiar to people. They occur in a variety of habitats, such as grasslands, savannas, woodlands, thorny scrublands, mountains, and coastal hills. However, various anthropogenic factors have had a severe impact on zebra populations, in particular hunting for skins and habitat destruction.', language: 'English', difficulty: 'Hard')

test_session1 = TestSession.create(user_id: user1.id, test_id: test1.id)
test_session2 = TestSession.create(user_id: user2.id, test_id: test2.id)

report1 = Report.create(grade: '100%', improvements: 'Speed, accuracy', test_session_id: test_session1.id)
report2 = Report.create(grade: '86%', improvements: 'Puctuation, accuracy', test_session_id: test_session2.id)



