class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name

      t.timestamps #Crea created_at updated_at
    end
  end
end
