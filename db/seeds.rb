# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Developer.create!(email: 'phan.nguyen@example.com')
Developer.create!(email: 'quang.pham@example.com')

Language.create!(code: 'vn')
Language.create!(code: 'en')
Language.create!(code: 'ja')

ProgrammingLanguage.create!(name: 'ruby')
ProgrammingLanguage.create!(name: 'javascript')
ProgrammingLanguage.create!(name: 'php')
ProgrammingLanguage.create!(name: 'python')
ProgrammingLanguage.create!(name: 'scala')
ProgrammingLanguage.create!(name: 'kotlin')
ProgrammingLanguage.create!(name: 'swift')


DeveloperProgramming.create!(developer_id: 1, programming_language_id: 1)
DeveloperProgramming.create!(developer_id: 1, programming_language_id: 2)
DeveloperProgramming.create!(developer_id: 1, programming_language_id: 3)

DeveloperLanguage.create!(developer_id: 1, language_id: 1)
DeveloperLanguage.create!(developer_id: 1, language_id: 2)


DeveloperProgramming.create!(developer_id: 2, programming_language_id: 1)
DeveloperProgramming.create!(developer_id: 2, programming_language_id: 2)
DeveloperProgramming.create!(developer_id: 2, programming_language_id: 6)

DeveloperLanguage.create!(developer_id: 2, language_id: 1)
