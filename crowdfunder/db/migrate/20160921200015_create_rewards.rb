class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.integer :pledge
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
