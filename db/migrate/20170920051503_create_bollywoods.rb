class CreateBollywoods < ActiveRecord::Migration[5.1]
  def change
    create_table :bollywoods do |t|
      t.string :Q_type
      t.string :Ques
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.string :opt4
      t.string :ans

      t.timestamps
    end
  end
end
