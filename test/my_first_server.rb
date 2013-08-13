#!/usr/bin/env ruby

require 'webrick'

root = File.expand_path '~/Desktop/app_academy_thangs/html'

server = WEBrick::HTTPServer.new Port: 8080, DocumentRoot: :root

server.mount_proc '/' do |req, res|
  res.content_type = "text/text"
  res.body = req.path
end

trap('INT') { server.shutdown }

server.start