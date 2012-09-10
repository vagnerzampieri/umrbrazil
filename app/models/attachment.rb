class Attachment < ActiveRecord::Base
  attr_accessible :exam_id, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :attachment

  belongs_to :exam

#  mount_uploader :attachment, AttachmentUploader

  before_save :update_appendix_attributes
  before_update :update_time

  private

  def update_time
    self.attachment_updated_at = Time.now
  end

  def update_appendix_attributes
    if attachment.present? && attachment_changed?
      self.attachment_file_name = attachment.file.filename
      self.attachment_content_type = attachment.file.content_type
      self.attachment_file_size = attachment.file.size
    end
  end

end
