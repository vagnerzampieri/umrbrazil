require 'spec_helper'
require 'carrierwave/test/matchers'

describe Attachment do
  include CarrierWave::Test::Matchers

  it {should respond_to(:exam_id)}
  it {should respond_to(:attachment_file_name)}
  it {should respond_to(:attachment_content_type)}
  it {should respond_to(:attachment_file_size)}
  it {should respond_to(:attachment_updated_at)}
  it {should respond_to(:attachment)}

  it {should belong_to(:exam)}

  before do
    AttachmentUploader.enable_processing = true
    @attachment = AttachmentUploader.new(FactoryGirl.build(:exam), :attachment)
    @attachment.store!(File.open(Rails.root.join('app', 'assets', 'images', 'rails.png')))
  end

  after do
    AttachmentUploader.enable_processing = false
    @attachment.remove!
  end

  context 'The thumb version' do
    it 'should scale down a landscape image to be exactly 64 by 64 pixels' do
      @attachment.should have_dimensions(64, 64)
    end

  end
end
