class CreateRukunwargas < ActiveRecord::Migration
  def change
    create_table :rukunwargas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
