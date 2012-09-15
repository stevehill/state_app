class CreateStates < ActiveRecord::Migration
#  def change
#    create_table :states do |t|
#
#      t.timestamps
#    end
#  end
  
  def up
    create_table :states do |t|
      t.string :name, :null => false
      t.string :capital
      t.string :abbreviation
      t.string :year
      t.timestamps 
    end
  end
    
  def down
    drop_table :states
  end
  
end
