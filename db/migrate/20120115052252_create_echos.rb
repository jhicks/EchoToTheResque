class CreateEchos < ActiveRecord::Migration
  def change
    create_table :echos do |t|
      t.string :name
      t.string :echo

      t.timestamps
    end
  end
end
