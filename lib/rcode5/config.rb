module Rcode5
  ComponentConfig = Struct.new(:components_root_directory) do
    def initialize
      self.components_root_directory = nil
    end
  end

  def self.configure
    @config = ComponentConfig.new
    yield(@config) if block_given?
    @config
  end

  def self.config
    @config || configure
  end
end
