FROM quay.io/galaxy/metagenomics-training 

ENV GALAXY_CONFIG_BRAND Univesidad Nacional de Colombia

ADD ./tools_rnaseq.yml $GALAXY_ROOT/tools_rnaseq.yml

RUN install-tools $GALAXY_ROOT/tools_rnaseq.yml
