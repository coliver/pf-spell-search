class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :prerequisites
      t.string :prerequisite_feats
      t.string :benefit
      t.string :normal
      t.string :special
      t.string :source
      t.string :fulltext
      t.boolean :teamwork
      t.boolean :critical
      t.boolean :grit
      t.boolean :style
      t.boolean :performance
      t.boolean :racial
      t.boolean :companion_familiar
      t.string :race_name
      t.string :note
      t.string :goal
      t.string :completion_benefit
      t.boolean :multiples
      t.string :suggested_traits

      t.timestamps null: false
    end
  end
end
