class AddValueToVote < ActiveRecord::Migration[7.0]
  def change
    add_column :votes, :value, :boolean
  end
end
