# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
clifford = User.create(username: 'Clifford')
cynthia = User.create(username: 'Cynthia')

Poll.destroy_all 
poll_clifford = Poll.create(title: 'Facts about Clifford', author_id: clifford.id)
poll_cynthia = Poll.create(title: 'Facts about aA', author_id: cynthia.id)

Question.destroy_all
q1 = Question.create(inquiry: "What color is Clifford?", poll_id:poll_clifford.id)
q2 = Question.create(inquiry: "Is Clifford big or small?", poll_id:poll_clifford.id)

q3 = Question.create(inquiry: "What language do they teach at aA?", poll_id:poll_cynthia.id)
q4 = Question.create(inquiry: "Does Cynthia work at aA?", poll_id:poll_cynthia.id)

AnswerChoice.destroy_all
ac1 = AnswerChoice.create(response: "Red" , question_id: q1.id )
ac2 = AnswerChoice.create(response: "Blue", question_id: q1.id )

ac3 = AnswerChoice.create(response: "Big", question_id:q2.id)
ac4 = AnswerChoice.create(response: "Small", question_id:q2.id)

ac5 = AnswerChoice.create(response: "Ruby", question_id: q3.id)
ac6 = AnswerChoice.create(response: "Python", question_id: q3.id)

ac7 = AnswerChoice.create(response: "Yes", question_id:q4.id )
ac8 = AnswerChoice.create(response: "No", question_id:q4.id )

Response.destroy_all
#clifford answer cynthia poll
Response.create(response_id: ac1.id , user_id: clifford.id )
Response.create(response_id: ac3.id , user_id: clifford.id )

#cynthia answer clifford poll
Response.create(response_id: ac6.id , user_id: cynthia.id )
Response.create(response_id: ac8.id , user_id: cynthia.id )

