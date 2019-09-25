# frozen_string_literal: true

class CreateVacancies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacancies do |t|
      t.integer :station_id
      t.boolean :free, default: false

      t.timestamps
    end
  end
end
