class FileAttachment < ActiveRecord::Base
  belongs_to :story

  has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :attachment

  class User < ActiveRecord::Base
    has_attached_file :attachment,
      :storage => :s3,
      :bucket => 'mybucket',
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
  end
end
