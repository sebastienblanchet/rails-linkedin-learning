# λ rails generate model Page name:string permalink:string position:integer visible:boolean content:text
class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.text :content

      t.timestamps
    end
  end
end
