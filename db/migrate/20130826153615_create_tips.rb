class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :description
      t.integer :exam_id

      t.timestamps
    end
  end
end
