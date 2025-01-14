# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rbconfig'

begin
  host_os = RbConfig::CONFIG['host_os']
  case host_os
  when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
    begin
      exec("./lib/hutomen.exe")
    rescue Exception => e
      puts e.backtrace
    end
  when /darwin|mac os/
  when /linux/
  else
  end
rescue StandardError => e
  puts e.printStackTrace
rescue Exception => e
  puts e.printStackTrace
ensure
  GC.compact
end
