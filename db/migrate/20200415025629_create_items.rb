class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :image
      t.string :people
      t.string :time
      t.string :age
      t.text :rule
      t.timestamps
    end
  end
end
