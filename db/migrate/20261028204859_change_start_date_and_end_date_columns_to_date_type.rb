class ChangeStartDateAndEndDateColumnsToDateType < ActiveRecord::Migration[8.1]
  def change
    change_column :movements, :start_date, :date, using: "TO_DATE(start_date, 'DD/MM/YYYY')"
  end
end
