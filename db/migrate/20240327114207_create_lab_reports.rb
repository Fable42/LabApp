class CreateLabReports < ActiveRecord::Migration[7.1]
  def change
    create_table :lab_reports do |t|
      t.string :title, null: false
      t.text :description
      t.string :grade
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
