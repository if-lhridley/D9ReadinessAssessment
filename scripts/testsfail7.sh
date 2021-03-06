#!/bin/bash

# Turn on crude error handling
set -e -o pipefail

# Executes the test scans and other tests

# Scheduler
echo "scheduler"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler rules scheduler_rules_integration -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall scheduler_rules_integration rules scheduler -y"
set -e -o pipefail

# Search API
echo "search_api"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api search_api_db -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_db search_api -y"
set -e -o pipefail

# Search API Fast
echo "search_api_fast"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api_fast -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api_fast" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_fast -y"
set -e -o pipefail

# Search API Solr
echo "search_api_solr"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api_solr -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api_solr" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_solr -y"
set -e -o pipefail

# Search Exclude
echo "search_exclude"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_exclude -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_exclude"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_exclude -y"
set -e -o pipefail

# Search Exclude NID
echo "search_exclude_nid"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_exclude_nid -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_exclude_nid"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_exclude_nid -y"
set -e -o pipefail

# Select2
echo "select2"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en select2 -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/select2"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall select2 -y"
set -e -o pipefail

# Share Everywhere
echo "share_everywhere"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en share_everywhere -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/share_everywhere"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall share_everywhere -y"
set -e -o pipefail

# Single DateTime
echo "single_datetime"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en single_datetime -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/single_datetime" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall single_datetime -y"
set -e -o pipefail

# Structure Sync
echo "structure_sync"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en structure_sync -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/structure_sync"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall structure_sync -y"
set -e -o pipefail

# Ultimate Cron -- failed scan due to useof deprecated constant REQUEST_TIME
echo "ultimate_cron"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ultimate_cron -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ultimate_cron" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ultimate_cron -y"
set -e -o pipefail

# User Default Page
echo "user_default_page"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en user_default_page -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/user_default_page"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall user_default_page -y"
set -e -o pipefail

# Varnish Purge
echo "varnish_purge"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en varnish_purger varnish_focal_point_purge varnish_image_purge varnish_purge_tags -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/varnish_purge" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall varnish_purger varnish_purge_tags varnish_image_purge varnish_focal_point_purge -y"
set -e -o pipefail

# Views Entity Operation Access (VEOA)
echo "veoa"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en veoa -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/veoa"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall veoa -y"
set -e -o pipefail

# ViewerJS
echo "viewerjs"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en viewerjs -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/viewerjs" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall viewerjs -y"
set -e -o pipefail

# Views Advanced Routing
echo "views_advanced_routing"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_advanced_routing -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_advanced_routing"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_advanced_routing -y"
set -e -o pipefail

# Views Bulk Operations
echo "views_bulk_operations"
set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_bulk_operations -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_bulk_operations"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_bulk_operations -y"
set -e -o pipefail

# Views Taxonomy Term Name Depth
set +e
echo "views_taxonomy_term_name_depth"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_taxonomy_term_name_depth -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_taxonomy_term_name_depth"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_taxonomy_term_name_depth -y"
set -e -o pipefail
