# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  response    :string           not null
#  question_id :integer          not null
#

class AnswerChoice < ApplicationRecord
  validates :response, presence: true
  validates :question_id, presence: true
  
  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question
    
  has_many :responses,
    primary_key: :id,
    foreign_key: :response_id,
    class_name: :Response

end
