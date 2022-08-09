class CreateShortenings < ActiveRecord::Migration[7.0]
  def change
    create_table :shortenings do |t|
      t.string :url
      t.string :key

      t.timestamps
    end

    add_index :shortenings, :key, unique: true
  end
end
