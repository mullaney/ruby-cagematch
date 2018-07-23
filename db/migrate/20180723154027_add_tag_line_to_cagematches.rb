class AddTagLineToCagematches < ActiveRecord::Migration[5.1]
  def change
    add_column :cagematches, :tag_line, :string
  end
end
