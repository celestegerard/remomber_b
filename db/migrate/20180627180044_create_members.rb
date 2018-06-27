class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :middle_name
      t.datetime :dob
      t.is_account :boolean
      t.string :username
      t.string :password
      t.integer :family_id

      t.timestamps
    end
  end
end
