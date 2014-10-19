class AddPivotalLinkToFactoids < ActiveRecord::Migration
  def change
    add_column :factoids, :pivotal_link, :string
  end
end
