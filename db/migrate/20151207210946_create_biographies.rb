class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.integer :talk_id

      t.timestamps null: false
    end
  end
end
