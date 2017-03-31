class CreateFriendShips < ActiveRecord::Migration
  def change
    create_table :friend_ships do |t|
    	t.belongs_to :user
    	t.belongs_to :friend, class: 'User'
      t.timestamps
    end
  end
end
