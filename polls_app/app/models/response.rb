# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  response_id :integer          not null
#  user_id     :integer          not null
#

class Response < ApplicationRecord

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :response_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end 
