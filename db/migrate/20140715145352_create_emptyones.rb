class CreateEmptyones < ActiveRecord::Migration
  def change
    create_table :emptyones do |t|
      t.string :email

      t.timestamps
    end
  end
end
