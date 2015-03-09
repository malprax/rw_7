class CreateRukuntetanggas < ActiveRecord::Migration
  def change
    create_table :rukuntetanggas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
