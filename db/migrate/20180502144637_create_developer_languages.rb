class CreateDeveloperLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_languages do |t|
    	t.belongs_to :developer
    	t.belongs_to :language
      t.timestamps
    end
  end
end
