class CreatePublishers < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.boolean :allows_self_publishing, null: false, default: false

      t.timestamps
    end
  end
end
