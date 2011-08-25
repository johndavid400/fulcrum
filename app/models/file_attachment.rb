class FileAttachment < ActiveRecord::Base
  belongs_to :story

  has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :attachment
end
