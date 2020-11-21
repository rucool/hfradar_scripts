#!/bin/bash
PATH=/bin:/usr/bin;
PATH="/home/codaradm/miniconda3/bin:$PATH"
logdir=$HOME/logs/parse_wave_files
log_file_name=parse_wave_files-$(date --utc +%Y%m%d).log
logfile=$logdir/${log_file_name}

echo ---------------- Start ---------------------- >> $logfile
date >> $logfile

source ~/miniconda3/etc/profile.d/conda.sh
conda activate hfradar
python /home/codaradm/operational_scripts/hfradarpy/hfradar/methods/waves/parse_waves_to_database.py >> $logfile
conda deactivate

echo ---------------- End ------------------------ >> $logfile
