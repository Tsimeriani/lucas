class CreateEsculturas < ActiveRecord::Migration
  def change
    create_table :esculturas do |t|
      t.string :modelo
      t.string :valor
      t.string :foto

      t.timestamps
    end
  end
end
