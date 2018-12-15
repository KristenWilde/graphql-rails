class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.integer :user_id
      t.string :pitch_code
      t.string :staff
      t.string :name
      t.integer :octave
      t.integer :position

      t.timestamps
    end
  end
end
