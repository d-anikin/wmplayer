class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :photo
      t.string :token
      t.string :href
      t.string :email

      t.timestamps
    end
  end
end
