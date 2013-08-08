require 'rspec/autorun'
require 'json_expressions/rspec'
require 'net/http'
require_relative '../genghis.rb'

RSpec.configure do |config|
  def genghis_backends
    [:php, :ruby]
  end

  def find_available_port
    server = TCPServer.new('127.0.0.1', 0)
    server.addr[1]
  ensure
    server.close if server
  end

  def start_backend(backend)
    @genghis_port = find_available_port

    case backend
    when :php
      @genghis_pid = spawn 'php', '-S', "localhost:#{@genghis_port}", 'genghis.php', :out => '/dev/null'
      api = Faraday.new url: "http://localhost:#{@genghis_port}"
      0.upto(10) do |i|
        break if api_started?(api)
        sleep 0.1
      end
      api
    when :ruby
      Faraday.new do |conn|
        conn.adapter :rack, Genghis::Server.new
      end
    end
  end

  def api_started?(api)
    api.get '/'
    true
  rescue Faraday::Error::ConnectionFailed => e
    false
  end

  def encode_upload(file)
    "data:text/plain;base64," + Base64.strict_encode64(file)
  end

  config.after :all do
    # Kill any outstanding Genghis backend
    Process.kill('HUP', @genghis_pid) unless @genghis_pid.nil?
    @genghis_pid = nil
  end
end