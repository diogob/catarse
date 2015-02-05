class ExploreController < ApplicationController
  before_filter :detect_mobile_browsers, only: [:index]

  def index
    @title = t('explore.title')

    @categories = Category.with_projects.order(:name_pt).all
  end
end
