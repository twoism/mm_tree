$: << File.join(File.dirname(__FILE__), '..', 'lib')
$: << File.dirname(__FILE__)

require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mongo_mapper'
require 'mm_tree'
require 'schema'
begin; require 'redgreen'; rescue LoadError; end
