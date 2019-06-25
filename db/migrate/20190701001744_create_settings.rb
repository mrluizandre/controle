class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.integer :when_send_notification

      t.timestamps
    end
  end
end
