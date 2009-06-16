class AddTopicToConvo < ActiveRecord::Migration
  def self.up
    add_column :conversations, :topic, :string, :default => ""

    Conversation.find(:all).each do |c|
      c.topic = "Topic for conversation #{c.name}"
      c.save
    end

  end

  def self.down
    remove_column :conversations, :topic
  end
end
