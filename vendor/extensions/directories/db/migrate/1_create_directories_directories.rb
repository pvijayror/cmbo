class CreateDirectoriesDirectories < ActiveRecord::Migration

  def up
    create_table :refinery_directories do |t|
      t.integer :picture_id
      t.string :prefix
      t.string :full_name
      t.text :specialty
      t.text :schedule
      t.string :location
      t.string :position
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-directories"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/directories/directories"})
    end

    drop_table :refinery_directories

  end

end
