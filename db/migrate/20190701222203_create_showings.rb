class CreateShowings < ActiveRecord::Migration[5.2]
  def change
    create_table :showings do |t|
      t.integer :time
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
