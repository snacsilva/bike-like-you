# frozen_string_literal: true

class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :vacancy_id
      t.boolean :with_problem, default: false

      t.timestamps
    end
  end
end
