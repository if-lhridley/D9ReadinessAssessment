#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Tab Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tab_toolbar -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tab_toolbar"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tab_toolbar -y"

# TAC Lite
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tac_lite -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tac_lite"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tac_lite -y"

# Taxonomy Access Fix
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en taxonomy_access_fix -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/taxonomy_access_fix"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall taxonomy_access_fix -y"

# Text Resize
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_resize -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_resize"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_resize -y"

# Text with Title
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_with_title -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_with_title"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_with_title -y"

# Token
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en token -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/token" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall token -y"

# Twig Field Value
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_field_value -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_field_value"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_field_value -y"

# Twitter Block
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twitter_block -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twitter_block"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twitter_block -y"

# Unlimited Number
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en unlimited_number -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/unlimited_number"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall unlimited_number -y"

# Views Autocomplete Filters -- depends on search_api to complete tests
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api views_autocomplete_filters -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_autocomplete_filters" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_autocomplete_filters search_api -y"

# Views Contextual Filter Or
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_contextual_filters_or -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_contextual_filters_or"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_contextual_filters_or -y"

# Views Data Export 
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_data_export -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_data_export" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_data_export -y"

# Views Infinite Scroll
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_infinite_scroll -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_infinite_scroll"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_infinite_scroll -y"

# Varnish Purge
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en varnish_purger varnish_focal_point_purge varnish_image_purge varnish_purge_tags -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/varnish_purge" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall varnish_purger varnish_purge_tags varnish_image_purge varnish_focal_point_purge -y"

# Views Reference
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en viewsreference -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/viewsreference" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall viewsreference -y"

# Views Taxonomy Term Name Depth
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_taxonomy_term_name_depth -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_taxonomy_term_name_depth"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_taxonomy_term_name_depth -y"

# Views Timeline JS - unable to install due to missing module
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_timelinejs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_timelinejs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_timelinejs -y"
set -e -o pipefail