class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reeviews
  has_and_belongs_to_many :categories
  has_attached_file :image, styles: { medium: "400x500#", thumb: "200x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def average
    a=[]
    reeviews.each do |r|
      a << r.rating
    end
    (a.sum/a.size.to_f).round(1)
  end
  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

  COLUMNS = ["title","movie_length","director","rating","cast","story","screenplay","dialogues","producer","lyricists","music","cinematography","language","country_name"]
end
