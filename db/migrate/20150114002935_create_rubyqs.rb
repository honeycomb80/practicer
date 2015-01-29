class CreateRubyqs < ActiveRecord::Migration
  def change
    create_table :rubyqs do |t|
      t.integer :prompt_id
      t.integer :group_id
      t.string :prompt1
      t.string :prompt2
      t.string :answer
      t.boolean :linear

      t.timestamps
    end
  end
end
