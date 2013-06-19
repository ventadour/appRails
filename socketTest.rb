require 'socket'                # Get sockets from stdlib

@nbConnection = 0

server = TCPServer.open(2000)   # Socket to listen on port 2000
loop { 
                          # Servers run forever
  Thread.fork(server.accept) do |client|
    
    puts "connection n" << @nbConnection.to_s
    @nbConnection += 1
    
    input = client.gets
    puts input
    
    client.puts(Time.now.ctime) # Send the time to the client

   # client.puts "Closing the connection. Bye!"
    
    client.close
   # client.puts "Goodbye"
  end
}
