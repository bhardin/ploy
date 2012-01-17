class AddOtherFieldsToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :linked_in, :string
    add_column :candidates, :notes, :text
  end

  def self.down
    remove_column :candidates, :notes
    remove_column :candidates, :linked_in
  end
end
