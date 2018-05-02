require "sinatra"

get "/" do
  puts "start"
  content_type "text/plain"
  stream :keep_open do |out|
    loop do
      puts "open"
      out << "hello\r\n"
      sleep 1
    end
  end
end
