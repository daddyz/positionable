ActiveRecord::Schema.define do
  self.verbose = false

  create_table :folders, :force => true do |t|
    t.string :title
    t.timestamps
  end

  create_table :documents, :force => true do |t|
    t.integer :folder_id
    t.string :title
    t.integer :position
    t.timestamps
  end

  create_table :groups, :force => true do |t|
    t.string :title
    t.timestamps
  end

  create_table :items, :force => true do |t|
    t.integer :group_id # Only fot MixedItem
    t.string :title
    t.integer :position
    t.string :type
    t.timestamps
  end

  create_table :dummies, :force => true do |t|
    t.string :title
    t.timestamps
  end
end