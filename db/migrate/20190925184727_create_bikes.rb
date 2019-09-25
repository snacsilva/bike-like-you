class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :vacancy_id
      t.boolean :with_problem

      t.timestamps
    end
  end
end
