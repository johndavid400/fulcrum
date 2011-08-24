class FileAttachment < ActiveRecord::Base
  belongs_to :story

  has_attached_file :attachment
  validates_attachment_presence :attachment
end
