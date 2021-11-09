class CreateKitties < ActiveRecord::Migration[6.1]
  def change
    create_table :kitties do |t|
      t.string :name

      t.timestamps
    end
  end
end
