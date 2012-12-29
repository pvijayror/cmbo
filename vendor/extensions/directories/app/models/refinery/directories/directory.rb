module Refinery
  module Directories
    class Directory < Refinery::Core::BaseModel
      self.table_name = 'refinery_directories'

      attr_accessible :image_id, :prefix, :full_name, :specialty, :schedule, :location, :position

      acts_as_indexed :fields => [:prefix, :full_name, :specialty, :schedule, :location]

      validates :prefix, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
