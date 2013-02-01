require "bigos_menu_box/engine"
require "simple_form"
require "cocoon"

module BigosMenuBox
  module Controllers
    autoload :Helpers, 'bigos_menu_box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  # Include helpers to AC and AV.
  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosMenuBox::Controllers::Helpers
    end
  end
end
