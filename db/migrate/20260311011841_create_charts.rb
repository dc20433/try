class CreateCharts < ActiveRecord::Migration[8.1]
  def change
    create_table :charts do |t|
      t.references :regit, null: false, foreign_key: true
      t.string :t_date
      t.string :subj
      t.string :obj

      t.timestamps
    end
  end
end
