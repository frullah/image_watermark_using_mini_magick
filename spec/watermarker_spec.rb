# frozen_string_literal: true

require "spec_helper"
require "image_watermark_using_mini_magick/watermarker"

module ImageWatermarkUsingMiniMagick
  RSpec.describe Watermarker do
    let(:output_path) { File.expand_path("../tmp/output-with-watermark.jpg", __dir__) }
    let(:image_path) { File.expand_path("fixtures/images/dummy-ktp.jpg", __dir__) }
    
    before { FileUtils.rm_f(output_path) }

    it "should add watermark to the right of image" do
      Watermarker.call(
        from: image_path,
        to: output_path,
      )
      expect(File.exist?(output_path)).to be_truthy
    end
  end
end
