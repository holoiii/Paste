class CreateTextPastes < ActiveRecord::Migration
  def self.up
    create_table :text_pastes do |t|
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :text_pastes
  end
end
