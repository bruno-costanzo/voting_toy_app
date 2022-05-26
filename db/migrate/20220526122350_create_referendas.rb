class CreateReferendas < ActiveRecord::Migration[7.0]
  def change
    create_table :referendas do |t|
      t.string :question

      t.timestamps
    end
  end
end
