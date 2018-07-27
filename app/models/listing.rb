class Listing < ActiveRecord::Base

  has_attached_file :image, styles: { :medium => "200x", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :secondary_image1, styles: { :medium => "200x", :thumb => "100x100>" }
  validates_attachment_content_type :secondary_image1, :content_type => /\Aimage\/.*\Z/

  has_attached_file :secondary_image2, styles: { :medium => "200x", :thumb => "100x100>" }
  validates_attachment_content_type :secondary_image2, :content_type => /\Aimage\/.*\Z/

  has_attached_file :secondary_image3, styles: { :medium => "200x", :thumb => "100x100>" }
  validates_attachment_content_type :secondary_image3, :content_type => /\Aimage\/.*\Z/

  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates_attachment_presence :image

  belongs_to :user
  has_many :orders
end
