class AddGithubNameToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :github_name, :string
  end

  def self.down
    remove_column :candidates, :github_name
  end
end
