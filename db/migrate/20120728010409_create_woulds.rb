class CreateWoulds < ActiveRecord::Migration
  def change
    create_table :woulds do |t|
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
