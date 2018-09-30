#!/usr/bin/env bash
LOCALIZATION_MAP_INPUT=$1
LOCALIZATION_MAP_OUTPUT=$2
REST=$@

rosrun rovioli rovioli \
  --alsologtostderr=1 \
  --v=1 \
  --ncamera_calibration=ncamera-rotors-stereo.yaml  \
  --imu_parameters_maplab=imu-adis16488.yaml \
  --imu_parameters_rovio=imu-sigmas-rovio.yaml \
  --publish_debug_markers  \
  --datasource_type="rostopic" \
  --optimize_map_to_localization_map=false \
  --vio_localization_map_folder=$LOCALIZATION_MAP_INPUT \
  --map_builder_save_image_as_resources=false \
  --save_map_folder=$LOCALIZATION_MAP_OUTPUT $REST
