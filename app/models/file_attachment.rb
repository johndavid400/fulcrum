class FileAttachment < ActiveRecord::Base
belongs_to :story
validates_attachment_presence :attachment

has_attached_file :attachment
end
