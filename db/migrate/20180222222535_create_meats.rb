class CreateMeats < ActiveRecord::Migration[5.1]
  def self.up
    create_table :meats do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
