class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :memory_id
      t.string :member_id

      t.timestamps
    end
  end
end
