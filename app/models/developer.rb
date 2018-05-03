class Developer < ApplicationRecord
	validates :email, uniqueness: true, presence: true
	
	has_many :developer_programmings
	has_many :developer_languages
  has_many :languages, through: :developer_languages
  has_many :programming_languages, through: :developer_programmings

end
