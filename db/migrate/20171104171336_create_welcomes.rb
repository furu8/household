class CreateWelcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :welcomes do |t|
      t.string :week
      t.string :money
      t.string :ave

      t.timestamps
    end
  end
end
