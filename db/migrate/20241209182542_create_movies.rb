class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :actors
      t.text :synopsis

      t.timestamps
    end
  end
end
