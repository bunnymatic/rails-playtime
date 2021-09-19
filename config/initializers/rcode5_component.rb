require_relative "../../lib/rcode5/rcode5.rb"
require_relative "../../lib/rcode5/config.rb"
require_relative "../../lib/rcode5/component.rb"

Rcode5.configure do |cfg|
  cfg.components_root_directory = "app/components"
  ApplicationController.class_eval { append_view_path "app/components" }
end
