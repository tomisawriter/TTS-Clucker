class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_up do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
