class CreateOrderables < ActiveRecord::Migration[7.2]
  def change
    create_table :orderables do |t|
      t.timestamps
    end
  end
end
