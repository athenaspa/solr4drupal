FROM solr:7

LABEL maintainer="e.righetto@athena.eu "

# Copy configurations custom.
ADD solr_7.x_config /opt/docker-solr/configsets/drupal/conf

ENTRYPOINT ["docker-entrypoint.sh"]

# Create default core of project.
CMD ["solr-create", "-c", "corporateb2b", "-d", "/opt/docker-solr/configsets/drupal/conf"]
