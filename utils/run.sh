# python run_workloads.py \
# --framework pytorch \
# --docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
# --workload_config_path submission_configs_small/AlgoPerf_Team_1_self_tuning_AdamG.json \
# --dry_run

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_25_external_tuning_cyclic_lr.json

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_25_external_tuning_lawa_ema_cyclic_lr.json

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_25_external_tuning_lawa_queue.json

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_25_external_tuning_lawa_ema.json

python run_workloads.py \
--framework jax \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_jax_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_3_external_tuning_amos.json

python run_workloads.py \
--framework jax \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_jax_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_11_external_tuning_nadamp.json

python run_workloads.py \
--framework jax \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_jax_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_11_external_tuning_generalized_adam.json

python run_workloads.py \
--framework jax \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_jax_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_11_self_tuning.json
