class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :phone

      t.timestamps null: false
    end
  end
end
