class AlterColumnImagesComment < ActiveRecord::Migration
  def change
    def self.up
      change_table :images do |t|
        t.change :caption, :text
      end
    end
    def self.down
      change_table :images do |t|
        t.change :caption, :string
      end
    end
  end
end
