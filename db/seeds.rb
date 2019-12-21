# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'MattC', first_name: 'Matthew', last_name: 'Clark')
user2 = User.create(username: 'Charles', first_name: 'Sergey', last_name: 'Dmitriev')

test1 = Test.create(content: 'Content for keyboard test', language: 'English', difficulty: 'Easy')
test2 = Test.create(content: 'Content for another test', language: 'Russian', difficulty: 'Medium')

test_session1 = TestSession.create(user_id: user1.id, test_id: test1.id)
test_session2 = TestSession.create(user_id: user2.id, test_id: test2.id)

report1 = Report.create(grade: '100%', improvements: 'Speed, accuracy', test_session_id: test_session1.id)
report2 = Report.create(grade: '86%', improvements: 'Puctuation, accuracy', test_session_id: test_session2.id)



