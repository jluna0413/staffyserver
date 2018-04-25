class TalentProfile < ApplicationRecord
  belongs_to :user
  validates :phone,   :presence => {:message => 'Please input a valid phone number'},
                      :numericality => true,
                      :length => { :minimum => 10, :maximum => 15 }
end
