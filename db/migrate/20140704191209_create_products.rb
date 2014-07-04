class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :plu
      t.boolean :organic
      t.boolean :brand_substitution
      t.boolean :organic_substitution

      t.timestamps
    end
  end
end
