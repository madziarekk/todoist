class RenameUserToUsers < ActiveRecord::Migration
      def self.up
        rename_table :User, :Users
      end
     def self.down
        rename_table :Users, :User
     end
end
