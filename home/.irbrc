require 'rubygems' rescue nil
require 'wirble'

Wirble.init
Wirble.colorize

require 'irb/completion'
require 'pp'

class Object
	def local_methods(obj=self)
		(obj.methods - obj.class.superclass.instance_methods).sort
	end
end

def clear
	print `clear`
end

def echo
	irb_context.echo = !irb_context.echo
	puts "Echo #{irb_context.echo ? 'on' : 'off'}"
end
