# frozen_string_literal: true

class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :friend
      t.index %i[user_id friend_id], unique: true
    end
  end
end
