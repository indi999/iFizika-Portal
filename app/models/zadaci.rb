class Zadaci < ActiveRecord::Base

  mount_uploader :zadatak, ZadaciUploader

  def self.search(search)
    if search
      find(:all, :conditions => ['razred LIKE ?', "%#{search}%"])

    else
      find(:all)
    end
  end
end
