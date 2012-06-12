class ChangeProtectoraType < ActiveRecord::Migration
  def self.up
      change_table :mascota do |t|
        t.change :protectora, :int
      end
    end
    def self.down
      change_table :mascota do |t|
        t.change :protectora, :int
      end
    end
end
