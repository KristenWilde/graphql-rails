class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.integer :user_id
      t.string :pitch_code, null: false

      t.timestamps
    end
  end
end
