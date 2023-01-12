# How did we get here?? Running command --> rake db:create_migration NAME=create_costume_stores
#This page is just a Migration to request a table
#We are drawing the tables costumes
#running rake db:migrate runs the migrations - or else they dont exist! Now check the schema to confirm migration.
# if you wish ot make changes you MUST run rake db:rollback -> then RERUN migration!!!! MAKE SURE YOU HAVENT MADE ANY CHANGES YET!!!!!!!!
#remember to check available rake methods run rate -T in terminal.
# rake db:drop unlinks db completely if you need to restart



class CreateCostumeStores < ActiveRecord::Migration[6.1]
  def change
    create_table :costume_stores do |t|
      t.string :name
      t.string :location
      t.integer :costume_inventory
      t.integer :num_of_employees
      t.boolean :is_in_business, default: true
      t.datetime :opening_time
      t.datetime :closing_time

      t.timestamps
    end
  end
end
