require 'rails_helper'

RSpec.describe Developer, type: :model do
  context "search developers " do

    it "who can write Ruby" do
      developer_ruby = Developer.joins(:programming_languages).where(programming_languages: {name: 'ruby'})
    end

    it "who can write Ruby and speak English" do
      developer_ruby_englist = Developer.joins(:programming_languages, :languages)
      	.where(programming_languages: {name: 'ruby'}, languages: {code: 'en'})
    end
  end
end
 