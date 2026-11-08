# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_11_08_094158) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "movements", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "movement_type", null: false
    t.string "place_type", null: false
    t.string "account_type", null: false
    t.date "start_date", null: false
    t.string "name", null: false
    t.string "nationality"
    t.string "owner_place", null: false
    t.string "constancy_folio", null: false
    t.string "rfc", null: false
    t.string "curp", null: false
    t.string "gender", null: false
    t.string "place_of_birth", null: false
    t.string "marital_status"
    t.string "street_and_number"
    t.string "neigborhood"
    t.string "postal_code"
    t.string "city"
    t.string "state"
    t.string "movement_type_number", null: false
    t.string "start_day", null: false
    t.string "start_month", null: false
    t.string "start_year", null: false
    t.string "end_day", null: false
    t.string "end_month", null: false
    t.string "end_year", null: false
    t.string "employee_type", null: false
    t.string "ppm_folio", null: false
    t.string "past_position", null: false
    t.string "past_position_desc", null: false
    t.string "past_budget_key", null: false
    t.string "past_resp_center_key", null: false
    t.string "past_resp_center_desc", null: false
    t.string "current_position", null: false
    t.string "current_position_desc", null: false
    t.string "current_budget_key", null: false
    t.string "current_resp_center_key", null: false
    t.string "current_resp_center_desc", null: false
    t.string "justification", null: false
    t.boolean "needs_commission", default: false, null: false
    t.string "commissioned_to", default: "NA", null: false
    t.string "proposed_by"
    t.string "made_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
