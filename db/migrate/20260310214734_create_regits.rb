class CreateRegits < ActiveRecord::Migration[8.1]
  def change
    create_table :regits do |t|
      t.string :name
      t.string :gender
      t.string :dob

      t.timestamps
    end
  end
end
