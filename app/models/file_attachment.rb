class FileAttachment < ActiveRecord::Base

  belongs_to :story
  validates_attachment_presence :attachment

  has_attached_file :attachment,
    # comment out the following 2 lines to store files locally
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/private/s3.yml",

end
