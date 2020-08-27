class AddViewAllowedToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :view_allowed, :boolean, default: true, null: true
  end
end
