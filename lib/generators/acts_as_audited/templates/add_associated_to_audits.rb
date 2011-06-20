class <%= migration_class_name %> < ActiveRecord::Migration
  def self.up
    add_column :audits, :associated_id, :integer
    add_column :audits, :associated_type, :string
  end

  def self.down
    remove_column :audits, :associated_type
    remove_column :audits, :associated_id
  end
end
