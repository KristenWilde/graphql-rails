class CreateJoinTableGoalPitch < ActiveRecord::Migration[5.1]
  def change
    create_join_table :goals, :pitches do |t|
      t.index [:goal_id, :pitch_id]
      t.index [:pitch_id, :goal_id]
    end
  end
end
