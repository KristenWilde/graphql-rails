class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :speed, null: false
      t.references :resultable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
