class AddPositiveToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :positive, :boolean
  end
end
