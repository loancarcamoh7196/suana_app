class Banner < ApplicationRecord
  has_one_attached :image

  def image_on_disk
    ActiveStorage::Blob.service.public_send(:path_for, image.key)
  end
end
