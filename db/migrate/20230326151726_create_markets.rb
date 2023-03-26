class CreateMarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :markets do |t|
      t.datetime :time
      t.decimal :value

    end
  end
end
