class ChangeAnswerType < ActiveRecord::Migration
  def change
    change_column :woulds, :answer, :string, :limit => 40
  end

end
