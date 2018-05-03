class ProgrammingLanguage < ApplicationRecord
	validates :name, uniqueness: true, presence: true
	
	has_many :developer_programmings
  has_many :developers, through: :developer_programmings
	
end
