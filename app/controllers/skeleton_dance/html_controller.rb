class SkeletonDance::HtmlController < ActionController::Base
  before_filter :add_project_paths, only: :show

  layout :layout_param, only: :show

  def index
  end

  def show
    render template: params[:page] || 'home'
  end

  private

  def add_project_paths
    prepend_view_path Rails.root.join('app', 'assets', 'html')
  end

  def layout_param
    params[:layout] || 'application'
  end
end
