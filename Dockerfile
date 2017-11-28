FROM bitnami/discourse

LABEL maintainer "joshua.foster@stfc.ac.uk"

ENV AUTH0_PLUGIN_REPO https://github.com/auth0/discourse-plugin.git

RUN cd /opt/bitnami/discourse && \
    RAILS_ENV=production bundle exec rake plugin:install repo=${AUTH0_PLUGIN_REPO}
