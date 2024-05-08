#!/bin/bash

if [ "$#" != "2" ]
then
	echo "usage: $0 [root_dir] [dataset]"
	exit 255
fi

root_dir=$1
dataset=$2

export nnUNet_raw="${root_dir}/raw"
export nnUNet_preprocessed="${root_dir}/preprocessed"
export nnUNet_results="${root_dir}/results"

nnUNetv2_plan_and_preprocess -d ${dataset} --verify_dataset_integrity -pl nnUNetPlannerResEncM
