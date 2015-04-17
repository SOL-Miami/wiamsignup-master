class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :state

      t.timestamps null: false
    end
  end
end
