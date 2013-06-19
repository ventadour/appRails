require 'socket'      # Sockets are in standard library

hostname = 'localhost'
port = 2000

s = TCPSocket.open(hostname, port)

s.puts "demande d'information"

while !(s.closed?) &&
          (serverMessage = s.gets)

  if serverMessage.include?("Goodbye")
   puts "log: closing connection"
   s.close
  else
   puts serverMessage
  end

end