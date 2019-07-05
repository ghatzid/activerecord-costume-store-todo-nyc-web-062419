# Create a class and inherit from ActiveRecord::Migration
class CreateCostumes < ActiveRecord::Migration[5.2]
# The costumes table will have four columns:
# name
# price
# size
#image url
# as well as the two "timestamp" columns: created_at and updated_at. This will provide a grand total of six columns.
    def change
        create_table :costumes do |t|
            t.string :name
            t.integer :price
            t.integer :size
            t.integer :image_url
            t.datetime :created_at
            t.datetime :updated_at        
        end
    end
end


# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec