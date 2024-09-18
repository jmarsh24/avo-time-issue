class CreateHours < ActiveRecord::Migration[7.2]
  def change
    create_table :hours do |t|
      t.string :day
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
