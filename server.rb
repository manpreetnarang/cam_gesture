require 'webrick'
include WEBrick
 
dir = Dir::pwd
port = ARGV[0] ? ARGV[0] : 8000
 
puts "URL: http://#{Socket.gethostname}:#{port} or http://localhost:#{port}"
 
s = HTTPServer.new(
    :Port            => port,
    :DocumentRoot    => dir
)
 
trap("INT"){ s.shutdown }
s.start