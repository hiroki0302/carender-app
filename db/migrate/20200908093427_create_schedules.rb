class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :plan
      t.string :memo
      t.datetime :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
