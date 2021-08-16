class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.references :star, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :dispo
      t.float :price
      t.string :special_request

      t.timestamps
    end
  end
end
