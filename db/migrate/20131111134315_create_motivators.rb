class CreateMotivators < ActiveRecord::Migration
  def change
    create_table :motivators do |t|
      t.text :title
      t.text :body
      t.text :description

      t.timestamps
    end
  end
end
