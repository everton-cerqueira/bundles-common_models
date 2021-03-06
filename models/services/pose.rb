import_types_from 'base'
require 'models/services/position'
require 'models/services/orientation'
require 'models/services/orientation_with_z'

module CommonModels
    module Services
        # Provider of a full pose
        data_service_type 'Pose' do
            output_port 'pose_samples', '/base/samples/RigidBodyState'
            provides Position,    'position_samples' => 'pose_samples'
            provides Orientation, 'orientation_samples' => 'pose_samples'
            provides OrientationWithZ, 'orientation_z_samples' => 'pose_samples'
        end
    end
end
