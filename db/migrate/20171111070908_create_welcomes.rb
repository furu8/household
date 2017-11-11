class CreateWelcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :welcomes do |t|
      t.string :month
      t.string :date
      t.string :week
      t.string :money

      t.timestamps
    end
  end
end
