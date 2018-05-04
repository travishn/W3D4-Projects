# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  response_id :integer          not null
#  user_id     :integer          not null
#

class Response < ApplicationRecord
  validates :response_id, presence: true
  validates :user_id, presence: true
  validate :not_duplicate_response
  validate :cant_take_own_poll
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :response_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
  has_one :question,
    through: :answer_choice,
    source: :question
  
    
  def sibling_responses
    self.question.responses.where('responses.id != (?)', self.id)
  end  
  
  def respondent_already_answered?
    # sibling_responses.any? do |sibling|
    #   sibling.respondent.id == self.user_id
    # end
    
    sibling_responses.exists?(respondent_id: self.respondent_id) 
  end
  
  def not_duplicate_response
    condition = respondent_already_answered?
    
    if condition
      # errors(:user_id, "has already answered")
      errors[:duplicate] << "has already answered"
    end 
  end
  
  def cant_take_own_poll
    creator = self.question.poll.author_id
    errors[:creator] << "can't answer yo own poll" if creator == self.user_id
  end
  
end 
