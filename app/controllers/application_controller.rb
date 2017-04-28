class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale


  I18n.t :record_invalid, scope: [:activerecord, :errors, :messages]
   
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  private 
  def set_markdowm
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, no_styles: true)
  end

end
