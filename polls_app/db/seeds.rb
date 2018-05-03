# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(username: 'Clifford')
User.create(username: 'Cynthia')

Poll.destroy_all 
Poll.create(title: 'Facts about Clifford', author_id: 3)
Poll.create(title: 'Facts about aA', author_id: 4)

Question.destroy_all
Question.create(inquiry: "What color is Clifford?", poll_id:1)
Question.create(inquiry: "Is Clifford big or small?", poll_id:1)

Question.create(inquiry: "What language do they teach at aA?", poll_id:2)
Question.create(inquiry: "Does Cynthia work at aA?", poll_id:2)

AnswerChoice.destroy_all
AnswerChoice.create(response: "Red" , question_id:1 )
AnswerChoice.create(response: "Blue", question_id:1 )

AnswerChoice.create(response: "Big", question_id:2 )
AnswerChoice.create(response: "Small", question_id:2 )

AnswerChoice.create(response: "Ruby", question_id:3 )
AnswerChoice.create(response: "Python", question_id:3 )

AnswerChoice.create(response: "Yes", question_id:4 )
AnswerChoice.create(response: "No", question_id:4 )

Response.destroy_all
#clifford answer cynthia poll
Response.create(response_id:1 , user_id:1 )
Response.create(response_id:3 , user_id:1 )

#cynthia answer clifford poll
Response.create(response_id:6 , user_id:2 )
Response.create(response_id:8 , user_id:2 )

