class CreateUserMappings < ActiveRecord::Migration
  def change
    create_table :user_mappings do |t|
      t.string :slack_name
      t.string :gerrit_name

      t.timestamps null: false
    end
  end
end
