class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.string :availability
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :huddle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
