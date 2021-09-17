class CreateScopes < ActiveRecord::Migration[6.1]
  def change
    create_table :scopes do |t|

      t.timestamps
    end
  end
end
