class CreateScopes < ActiveRecord::Migration[6.1]
  def change
    create_table :scopes do |t|
      t.string :name
      t.timestamps
    end
  end
end
