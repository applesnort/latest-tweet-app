class CreateSnapshots < ActiveRecord::Migration[6.1]
  def change
    create_table :snapshots do |t|
      t.string :handle

      t.timestamps
    end
  end
end
