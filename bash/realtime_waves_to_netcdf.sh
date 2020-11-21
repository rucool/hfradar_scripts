#!/bin/bash
PATH=/bin:/usr/bin;
PATH="/home/codaradm/miniconda3/bin:$PATH"
logdir=$HOME/logs/realtime_waves_to_netcdf
log_file_name=realtime_waves_to_netcdf-$(date --utc +%Y%m%d).log
logfile=$logdir/${log_file_name}

echo ---------------- Start ---------------------- >> $logfile
date >> $logfile

source ~/miniconda3/etc/profile.d/conda.sh
conda activate hfradar
python /home/codaradm/operational_scripts/hfradarpy/scripts/realtime/realtime_waves_to_netcdf.py >> $logfile
conda deactivate

echo ---------------- End ------------------------ >> $logfile
