class SkeletonDance::InjectedController < ActionController::Base
  def inject_view_paths
    prepend_view_path Rails.root.join('app', 'assets', 'html')
    Dir.glob(Rails.root.join('engines', '**/app/assets/html')).each do |engine_path|
      prepend_view_path engine_path
    end
  end
end
