class CreateSeenResources < ActiveRecord::Migration[6.1]
  def change
    create_table :seen_resources do |t|
      t.references :user, index: true, foreign_key: true
      t.references :resource, index: true, foreign_key: true
      t.integer :count
      t.timestamps
    end
  end
end
