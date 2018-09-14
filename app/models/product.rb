class Product < ActiveRecord::Base

  belongs_to :user

  # ensure that a user_id is present
  mount_uploader :testovi, TestoviUploader
  mount_uploader :resenje, ResenjaUploader

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    unless @product = current_user.product.where(id: params[:id]).first
      flash[:alert] = 'Testovi not found.'
      redirect_to root_url
    end
  end
  #pretrega
  def self.search(search)
    if search
      where('nivo_takmicenja LIKE ? OR razred LIKE ? ', "%#{search}%", "%#{search}%" )
     else
      all()
    end
  end
end
# validates :user_id, presence: true
# ensure that title is present and at least 10 chars long
# validates :title, length: { minimum: 10 }, presence: true

# ensure the url is present, and respects the URL format for http/https
#  validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
