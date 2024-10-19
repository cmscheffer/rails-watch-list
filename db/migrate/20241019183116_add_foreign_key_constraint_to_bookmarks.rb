class AddForeignKeyConstraintToBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :bookmarks, :movies, if_exists: true
    add_foreign_key :bookmarks, :movies, on_delete: :restrict
  end
end
