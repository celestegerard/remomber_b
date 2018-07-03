class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :middle_name
      t.datetime :dob
      t.boolean :is_account
      t.string :username
      t.string :password_digest
      t.integer :family_id, :null => true

      t.timestamps
    end
  end
end
