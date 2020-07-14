class CreateHistoryImages < ActiveRecord::Migration[5.2]
  def change
    create_table :history_images do |t|
      t.integer :history_id
      t.string :image_id

      t.timestamps
    end
  end
end
