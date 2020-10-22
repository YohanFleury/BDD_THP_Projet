class CreateStrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :strolls do |t|
    t.belongs_to :dog_sitter, index: true
    t.datetime :date
    t.belongs_to :city, index: true
    end
  end
end
