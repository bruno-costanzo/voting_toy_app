class ChangeVotes < ActiveRecord::Migration[7.0]
  def change
    change_column :votes, :value, :boolean, default: false
  end
end
