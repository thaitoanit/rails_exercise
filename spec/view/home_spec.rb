require 'rails_helper'

RSpec.feature 'Developer search', type: :feature do
  context "search developers " do

    it 'Search first load page' do
      visit root_path

      # fill_in "language_id", :with => "2"

      # find(:select, "ruby").first(:option, 'programming_language_id').select_option
      # within('//divname') do
      #   select "", from: "programming_language_id", :match => :first
      # end
      # click_button "Create Widget"
      # programming_language_id
    end


  end
end
