
.ONESHELL:

# Need to specify bash in order for conda activate to work.
SHELL=/bin/bash
# Note that the extra activate is needed to ensure that the activate floats env to the front of PATH
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate
CONDA_ENV_NAME=eslab

install:
	./install.sh

conda-env:
	conda env create --name $(CONDA_ENV_NAME) --file=conda-env.yml

pip-install:
	pip install -r requirements.txt

.PHONY: conda-env pip-install install