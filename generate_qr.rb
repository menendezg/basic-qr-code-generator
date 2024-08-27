require 'bundler/setup'
Bundler.require(:default)


# create a new object 
qr  = RQRCode::QRCode.new('https://example.com')

puts qr.as_ansi


# generate  a png 
png = qr.as_png(
  bit_depth: 1,
  border_modules: 4,
  color_mode: ChunkyPNG::COLOR_GRAYSCALE,
  color: 'black',
  file: nil,
  fill: 'white',
  module_px_size: 6,
  resize_exactly_to: false,
  resize_gte_to: false,
  size: 120
)

IO.binwrite("qrcode.png", png.to_s)
