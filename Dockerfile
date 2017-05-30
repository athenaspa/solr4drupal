FROM solr:6

ADD solr_6.x_config /opt/docker-solr/configsets/drupal/conf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-create","-c","corporateb2b","-d","/opt/docker-solr/configsets/drupal/conf"]
