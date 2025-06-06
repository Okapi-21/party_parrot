class CreateDiagnoses < ActiveRecord::Migration[7.2]
  def change
    create_table :diagnoses do |t|
      t.string :headline
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
