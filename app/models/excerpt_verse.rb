class ExcerptVerse < ActiveRecord::Base
  belongs_to :excerpt
  belongs_to :verse

  belongs_to :user
end
