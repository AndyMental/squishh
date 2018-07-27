class AddAttachmentSecondaryImage3ToListings < ActiveRecord::Migration[5.1]
  def self.up
    change_table :listings do |t|
      t.attachment :secondary_image3
    end
  end

  def self.down
    remove_attachment :listings, :secondary_image3
  end
end
