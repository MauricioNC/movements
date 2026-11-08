class CreateMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :movements, id: :uuid do |t|
      t.string :movement_type, null: false
      t.string :place_type, null: false
      t.string :account_type, null: false
      t.date :start_date, null: false
      t.string :name, null: false
      t.string :nationality
      t.string :owner_place, null: false
      t.string :constancy_folio, null: false
      t.string :rfc, null: false
      t.string :curp, null: false
      t.string :gender, null: false
      t.string :place_of_birth, null: false
      t.string :marital_status
      t.string :street_and_number
      t.string :neigborhood
      t.string :postal_code
      t.string :city
      t.string :state
      t.string :movement_type_number, null: false
      t.string :start_day, null: false
      t.string :start_month, null: false
      t.string :start_year, null: false
      t.string :end_day, null: false
      t.string :end_month, null: false
      t.string :end_year, null: false
      t.string :employee_type, null: false
      t.string :ppm_folio, null: false
      t.string :past_position, null: false
      t.string :past_position_desc, null: false
      t.string :past_budget_key, null: false
      t.string :past_resp_center_key, null: false
      t.string :past_resp_center_desc, null: false
      t.string :current_position, null: false
      t.string :current_position_desc, null: false
      t.string :current_budget_key, null: false
      t.string :current_resp_center_key, null: false
      t.string :current_resp_center_desc, null: false
      t.string :justification, null: false
      t.boolean :needs_commission, default: false, null: false
      t.string :commissioned_to, default: "NA", null: false
      t.string :proposed_by
      t.string :made_by

      t.timestamps
    end
  end
end
