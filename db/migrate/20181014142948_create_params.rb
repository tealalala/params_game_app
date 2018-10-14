class CreateParams < ActiveRecord::Migration[5.2]
  def change
    create_table :params do |t|

      t.timestamps
    end
  end
end
