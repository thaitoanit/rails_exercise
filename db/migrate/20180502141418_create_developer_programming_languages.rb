class CreateDeveloperProgrammingLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_programmings do |t|
    	t.belongs_to :developer
    	t.belongs_to :programming_language
      t.timestamps
    end
  end
end
