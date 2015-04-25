class AddVoteCountToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :vote_count, :integer, :default => 0
  end
end
