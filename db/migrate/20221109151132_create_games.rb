class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :genre_id
      t.integer :score
      t.integer :completion_percentage
      t.string :platinum
      t.string :comment
    end
  end
end
