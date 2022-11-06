#!/usr/bin/with-contenv bashio
# ==============================================================================
# Blocky config
# ==============================================================================

bashio::log.info "Configuring blocky..."

tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/blocky.yaml \
    -out /data/blocky.yaml
