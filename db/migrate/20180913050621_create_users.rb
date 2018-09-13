class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :job
      t.string :category
      t.string :job
      t.date :startdate
      t.date :enddate
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
