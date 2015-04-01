class AddShoutFields < ActiveRecord::Migration
  def change
      add_column :shouts, :message, :string
      add_column :shouts, :lat, :decimal,  {:precision=>10, :scale=>6}
      add_column :shouts, :lng, :decimal,  {:precision=>10, :scale=>6}
  end
end
