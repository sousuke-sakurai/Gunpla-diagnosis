class CreateGunplakits < ActiveRecord::Migration[7.2]
  def change
    create_table :gunplakits do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5
      t.string :question6
      t.string :question7
      t.string :question8
      t.string :question9
      t.string :question10

      t.timestamps
    end
  end
end
