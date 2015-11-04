if defined? Xray
  require 'skeleton_dance/injected_controller'
  module Xray
    class Middleware

      # Use the injected controller also in Xray
      def render_xray_bar
        # ac = ActionController::Base.new
        ac = SkeletonDance::InjectedController.new
        ac.inject_view_paths
        ac.render_to_string(:partial => '/xray_bar').html_safe
      end
    end
  end
end
