class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :friend, null: false, polymorphic: true

      t.timestamps
    end
  end
end
