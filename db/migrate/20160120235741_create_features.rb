class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
