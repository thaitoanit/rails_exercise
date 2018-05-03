namespace :developer do
  require 'factory_bot_rails'
  require 'faker'

  desc 'Create data'
  task create_data: :environment do
  	@list_developer = []
    @list_language = []
    @list_programming_language = []

    puts "Created languages"
  	2.times do
	    language_code = loop do
	      code = Faker::Address.country_code
	      break code unless Language.exists?(code: code)
	    end
	    language = FactoryBot.create(:language, code: language_code)
	    @list_language << language
	  end


	  puts "Created a programming languages"
	  2.times do
	    programming_language_name = loop do
	      name = Faker::ProgrammingLanguage.name
	      break name unless ProgrammingLanguage.exists?(name: name)
	    end
	    programming_language = FactoryBot.create(:programming_language, name: programming_language_name)
	    @list_programming_language << programming_language
	  end

	  puts "Created a developers"
	  100.times do
	    email = loop do
	      email = Faker::Internet.email
	      break email unless Developer.exists?(email: email)
	    end

	    developer = FactoryBot.create(:developer,
        email: email,
        languages: @list_language.sample(1 + rand(@list_language.count)),
        programming_languages: @list_programming_language.sample(1 + rand(@list_programming_language.count)))
	    @list_developer << developer
	  end

  end
end
