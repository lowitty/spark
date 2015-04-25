class AddVoteCountToAmas < ActiveRecord::Migration
  def change
    add_column :amas, :vote_count, :integer, :default => 0
  end
end
