class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :first_name
      t.string :last_name
      t.string :performer_name
      t.string :address
      t.string :mail_address

      t.timestamps
    end
  end
end
