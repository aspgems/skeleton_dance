class SkeletonDance::HtmlController < SkeletonDance::InjectedController
  before_filter :add_project_paths, only: :show

  layout :layout_param, only: :show

  def index
  end

  def show
    render template: params[:page] || 'home'
  end

  private

  def add_project_paths
    inject_view_paths
  end

  def layout_param
    params[:layout] || 'application'
  end
end
