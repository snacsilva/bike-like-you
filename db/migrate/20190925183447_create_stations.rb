# frozen_string_literal: true

class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :vacancies_bike

      t.timestamps
    end
  end
end
