import os
import pprint
import copy
import json

SUBMISSON_DIR = "/home/kasimbeg/submissions_algorithms_v0.5"
REL_PATH_START = "/home/kasimbeg"
WORKLOADS_BASE_CONFIG_PATH = "/home/kasimbeg/algorithmic-efficiency/utils/workload_config_v05_base_small.json"

with open(WORKLOADS_BASE_CONFIG_PATH) as f:
    base_workload_config = json.load(f)

submissions = {}

for root, dirs, files in os.walk(SUBMISSON_DIR):
    if 'submission.py' in files:
        submission_path = os.path.join(root, 'submission.py')
        submission_name = '_'.join(submission_path.split('/')[4:-1])
        print(submission_name)

        submission_dict = {}
        submission_dict['submission_path'] = os.path.relpath(submission_path, REL_PATH_START).replace('0.5', '0_5')

        rel_root = os.path.relpath(root, REL_PATH_START)
        if 'external_tuning' in submission_path:
            submission_dict['tuning_search_space'] = os.path.join(rel_root, 'tuning_search_space.json').replace('0.5', '0_5')
            submission_dict['tuning_ruleset'] = 'external'
        else:
            submission_dict['tuning_ruleset'] = 'self'
        if 'requirements.txt' in os.listdir(root):
            submission_dict['requirements_path'] = os.path.join(rel_root, 'requirements.txt').replace('0.5', '0_5')
        submissions[submission_name] = submission_dict


for submission_name, submission_info in submissions.items():
    workload_config = copy.deepcopy(base_workload_config)
    for workload in workload_config.keys():
        workload_config[workload]['submission_path'] = submission_info['submission_path']   
        if 'tuning_search_space' in submission_info.keys():
            workload_config[workload]['tuning_search_space'] = submission_info['tuning_search_space']
        if 'requirements_path' in submission_info.keys():
            workload_config[workload]['requirements_path'] = submission_info['requirements_path']
        workload_config[workload]['tuning_ruleset'] = submission_info['tuning_ruleset']
    
    with open(os.path.join('submission_configs_small', f'{submission_name}.json'), 'w',) as f:
        json.dump(workload_config, f, indent=4)

