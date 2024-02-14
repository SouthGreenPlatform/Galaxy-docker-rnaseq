FROM quay.io/galaxy/metagenomics-training 

ENV GALAXY_CONFIG_BRAND Univesidad Nacional de Colombia

ADD tools_rnaseq.yml $GALAXY_ROOT/tools_rnaseq.yml

RUN install-tools $GALAXY_ROOT/tools_rnaseq.yml

ADD Colombia_UniversidadNacionaldeColombia_UNAL_21_.jpg $GALAXY_CONFIG_DIR/web/Colombia_UniversidadNacionaldeColombia_UNAL_21_.jpg
ADD ird.png $GALAXY_CONFIG_DIR/web/ird.png
ADD welcome.html $GALAXY_CONFIG_DIR/web/welcome.html
