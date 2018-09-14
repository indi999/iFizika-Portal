class Zadaci < ActiveRecord::Base

  mount_uploader :zadatak, ZadaciUploader

  def self.search(search)
    if search
      where('razred LIKE ?', "%#{search}%")
    else
      all()
    end
  end
end
