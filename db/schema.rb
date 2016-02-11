# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160211203430) do

  create_table "feats", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "description"
    t.string   "prerequisites"
    t.string   "prerequisite_feats"
    t.string   "benefit"
    t.string   "normal"
    t.string   "special"
    t.string   "source"
    t.string   "fulltext"
    t.boolean  "teamwork"
    t.boolean  "critical"
    t.boolean  "grit"
    t.boolean  "style"
    t.boolean  "performance"
    t.boolean  "racial"
    t.boolean  "companion_familiar"
    t.string   "race_name"
    t.string   "note"
    t.string   "goal"
    t.string   "completion_benefit"
    t.boolean  "multiples"
    t.string   "suggested_traits"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "school"
    t.string   "subschool"
    t.string   "descriptor"
    t.string   "spell_level"
    t.string   "casting_time"
    t.string   "components"
    t.boolean  "costly_components"
    t.string   "range"
    t.string   "area"
    t.string   "effect"
    t.string   "targets"
    t.string   "duration"
    t.boolean  "dismissible"
    t.boolean  "shapeable"
    t.string   "saving_throw"
    t.string   "spell_resistence"
    t.string   "description"
    t.string   "description_formated"
    t.string   "source"
    t.string   "full_text"
    t.boolean  "verbal"
    t.boolean  "somatic"
    t.boolean  "material"
    t.boolean  "focus"
    t.boolean  "divine_focus"
    t.string   "sor"
    t.string   "wiz"
    t.string   "cleric"
    t.string   "druid"
    t.string   "ranger"
    t.string   "bard"
    t.string   "paladin"
    t.string   "alchemist"
    t.string   "summoner"
    t.string   "witch"
    t.string   "inquisitor"
    t.string   "oracle"
    t.string   "antipaladin"
    t.string   "magus"
    t.string   "adept"
    t.string   "deity"
    t.string   "SLA_Level"
    t.string   "domain"
    t.string   "short_description"
    t.boolean  "acid"
    t.boolean  "air"
    t.boolean  "chaotic"
    t.boolean  "cold"
    t.boolean  "curse"
    t.boolean  "darkness"
    t.boolean  "death"
    t.boolean  "disease"
    t.boolean  "earth"
    t.boolean  "electricity"
    t.boolean  "emotion"
    t.boolean  "evil"
    t.boolean  "fear"
    t.boolean  "fire"
    t.boolean  "force"
    t.boolean  "good"
    t.boolean  "language_dependent"
    t.boolean  "lawful"
    t.boolean  "light"
    t.boolean  "mind_affecting"
    t.boolean  "pain"
    t.boolean  "poison"
    t.boolean  "shadow"
    t.boolean  "sonic"
    t.boolean  "water"
    t.string   "linktext"
    t.string   "material_costs"
    t.string   "bloodline"
    t.string   "patron"
    t.string   "mythic_text"
    t.string   "augmented"
    t.boolean  "mythic"
    t.string   "bloodrager"
    t.string   "shaman"
    t.string   "psychic"
    t.string   "medium"
    t.string   "mesmerist"
    t.string   "occultist"
    t.string   "spiritualist"
    t.string   "skald"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
