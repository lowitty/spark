class AddOneLinerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :one_liner, :text
  end
end
