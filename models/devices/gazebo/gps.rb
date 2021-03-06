require 'models/devices/gazebo/entity'
require 'models/services/position'

module CommonModels
    module Devices
        module Gazebo
            device_type 'GPS' do
                provides Entity
                provides Services::Position
            end
        end
    end
end

