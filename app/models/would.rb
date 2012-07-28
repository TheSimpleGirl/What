class Would < ActiveRecord::Base
  attr_accessible :answer, :question
  validates_length_of :answer, :maximum => 40
end
