class HomeController < ApplicationController

	def index

		@languages =  Language.all
		@programms = ProgrammingLanguage.all

		conditions = 'developers.id >= 1'

		if params[:language_id].present?
			conditions += " AND languages.id = #{params[:language_id]}"
		end

		if params[:programming_language_id].present?
			conditions += " AND programming_languages.id = #{params[:programming_language_id]}"
		end

		@developers = Developer.joins(:languages ,:programming_languages).where(conditions).group('developers.id')


	end
end
