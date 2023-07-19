class EditWateringDateDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :schedules, :watering_start_date, :date
  end
end
