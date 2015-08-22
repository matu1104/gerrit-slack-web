class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :plus_two
      t.integer :plus_one
      t.integer :zero
      t.integer :minus_one
      t.integer :minus_two
      t.integer :comments
      t.integer :jenkins_success
      t.integer :jenkins_failure
      t.integer :new_patch
      t.integer :qa_approved
      t.integer :product_approved
      t.integer :qa_and_product_approved
      t.integer :merged
      t.string :channel_name

      t.timestamps null: false
    end
  end
end
