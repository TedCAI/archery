class AddInitialScoreToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :initial_score, :integer, default: 0
  end
end
