# frozen_string_literal: true

require 'mini_magick'

module ImageWatermarkUsingMiniMagick
  class Watermarker
    def self.call(from:, to:)
      image = MiniMagick::Image.open(from)
      # TODO: add implementation
      image.write(to)
    end
  end
end
