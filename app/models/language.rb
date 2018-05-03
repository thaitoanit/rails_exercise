class Language < ApplicationRecord
	validates :code, uniqueness: true, presence: true

	has_many :developer_languages
  has_many :developers, through: :developer_languages

  	
end
