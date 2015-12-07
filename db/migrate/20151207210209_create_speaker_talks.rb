class CreateSpeakerTalks < ActiveRecord::Migration
  def change
    create_table :speaker_talks do |t|
      t.integer :speaker_id
      t.integer :talk_id

      t.timestamps null: false
    end
  end
end
