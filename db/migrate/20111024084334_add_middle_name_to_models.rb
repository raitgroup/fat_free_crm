class AddMiddleNameToModels < ActiveRecord::Migration
  def self.up
    add_column :leads,    :middle_name, :string, :default=>"", :limit=>64, :null=>false
    add_column :contacts, :middle_name, :string, :default=>"", :limit=>64, :null=>false
  end

  def self.down
    remove_column :leads,    :middle_name
    remove_column :contacts, :middle_name
  end
end
