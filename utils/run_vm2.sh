# python run_workloads.py \
# --framework pytorch \
# --docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
# --workload_config_path submission_configs_small/AlgoPerf_Team_10_external_tuning_schedule_free_adamw.json \

# python run_workloads.py \
# --framework pytorch \
# --docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
# --workload_config_path submission_configs_small/AlgoPerf_Team_10_external_tuning_schedule_free_prodigy.json

# python run_workloads.py \
# --framework pytorch \
# --docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
# --workload_config_path submission_configs_small/AlgoPerf_Team_10_self_tuning_schedule_free_adamw.json

# python run_workloads.py \
# --framework pytorch \
# --docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
# --workload_config_path submission_configs_small/AlgoPerf_Team_21_external_tuning_shampoo_submission.json

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_6_external_tuning_ggT.json

python run_workloads.py \
--framework jax \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_jax_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_16_external_tuning_caspr_adaptive.json

python run_workloads.py \
--framework pytorch \
--docker_image_url us-central1-docker.pkg.dev/training-algorithms-external/mlcommons-docker-repo/algoperf_pytorch_dev \
--workload_config_path submission_configs_small/AlgoPerf_Team_17_self_tuning_lwrkap.json