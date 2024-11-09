#!/bin/bash

# Define an array of instance IDs
instance_ids=(
    "pallets__flask-4045"
    "sympy__sympy-12454"
    "sympy__sympy-13177"
    "django__django-15320"
    "pytest-dev__pytest-9359"
    "mwaskom__seaborn-3010"
    "scikit-learn__scikit-learn-15512"
    "django__django-14534"
    "sympy__sympy-13773"
    "pytest-dev__pytest-7432"
    "sympy__sympy-11897"
    "matplotlib__matplotlib-23314"
    "sympy__sympy-13647"
    "django__django-12184"
    "django__django-15400"
    "django__django-17051"
    "astropy__astropy-12907"
    "django__django-11019"
    "sympy__sympy-13146"
    "django__django-13220"
    "scikit-learn__scikit-learn-10297"
    "pylint-dev__pylint-7993"
    "django__django-11848"
    "scikit-learn__scikit-learn-15535"
    "sympy__sympy-15011"
    "pydata__xarray-5131"
    "scikit-learn__scikit-learn-13497"
    "django__django-11905"
    "django__django-15498"
    "pylint-dev__pylint-6506"
    "pallets__flask-5063"
    "scikit-learn__scikit-learn-10508"
    "django__django-12700"
    "pydata__xarray-4493"
    "django__django-14155"
    "scikit-learn__scikit-learn-13439"
    "sympy__sympy-12236"
    "astropy__astropy-14182"
    "django__django-15347"
    "scikit-learn__scikit-learn-14983"
    "django__django-16527"
    "pdf__requests-2674"
    "pytest-dev__pytest-5227"
)

# Clear previous log files if they exist
echo "Starting new run. Clearing old logs."
> completed_instances.log
> failed_instances.log

# Loop through each instance ID and run the command
for instance_id in "${instance_ids[@]}"; do
    echo "Running for instance: $instance_id"
    if python run.py --model_name llama-3.1-8b --instance_filter "$instance_id"; then
        echo "$instance_id" >> completed_instances.log
        echo "Completed instance: $instance_id"
    else
        echo "$instance_id" >> failed_instances.log
        echo "Failed instance: $instance_id"
    fi
done

echo "Run complete. Check completed_instances.log and failed_instances.log for details."
