class <%= migration_class_name %> < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :feste_subscriptions do |t|
      t.integer :subscriber_id, null: false
      t.string :subscriber_type, null: false
      t.string :category, null: false
      t.boolean :canceled, null: false, default: false
      t.string :token, null: false
    end
  end
end