class CreateBoard < ActiveRecord::Migration
  def change
    create_table :boards do |t|
    	t.integer :user_id

    end
  end
end
