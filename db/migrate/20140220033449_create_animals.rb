class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string 	:name
      t.string 	:color
      t.string 	:classification
      t.string 	:temperament
      t.string 	:diet
      t.integer :quantity_here
      t.timestamps
    end

    create_table :tasks do |t|
    	t.string 	:body
    	t.boolean 	:is_complete
    	t.belongs_to 	:animal
    	t.integer 	:animal_id
    	t.timestamps
    end
  end
end
