require 'em-websocket'

class Cpt

  attr_accessor :val
  def initialize(valeur)
    @val = valeur
  end

  def plus
    @val += 1
  end

  def moins
    @val -= 1
  end

end

@cpt = Cpt.new(0)
@nbConnection = 1

EM::WebSocket.start(:host => "localhost", :port => 2000) do |ws|

  ws.onopen { |handshake|
    puts "WebSocket connection #{@nbConnection} open"
    puts handshake.headers["Sec-WebSocket-Key"].to_s
    ws.send @nbConnection.to_s
    @cpt = Cpt.new(0)
    @nbConnection += 1
  }

  ws.onclose {
    puts "Connection #{@nbConnection} closed"
    @cpt = Cpt.new(0)
  }

  ws.onmessage { |msg|

    puts ws.handshake.headers["Sec-WebSocket-Key"].to_s
    puts "Recieved message: #{msg}"

    if msg.include?("doMoins")
    @cpt.moins
    ws.send @cpt.val.to_s
    end

    if msg.include?("doPlus")
    @cpt.plus
    ws.send @cpt.val.to_s
    end
  }
end

