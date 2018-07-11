class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :title
      t.string :body
      t.integer :member_id

      t.timestamps
    end
  end
end
