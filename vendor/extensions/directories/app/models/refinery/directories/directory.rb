module Refinery
  module Directories
    class Directory < Refinery::Core::BaseModel
      self.table_name = 'refinery_directories'

      attr_accessible :picture_id, :prefix, :full_name, :specialty, :schedule, :location, :position, :position

      acts_as_indexed :fields => [:prefix, :full_name, :specialty, :schedule, :location, :position]

      validates :prefix, :presence => true, :uniqueness => true

      belongs_to :picture, :class_name => '::Refinery::Image'
    end
  end
end
