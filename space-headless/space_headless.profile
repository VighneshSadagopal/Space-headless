<?php

/**
 * @file
 * Contains install-time code for the HCP Platform profile.
 */

use Drupal\Core\Installer\InstallerKernel;

/**
 * Implements hook_install_tasks().
 */
function space_headless_install_tasks(): array
{
  $tasks = [];

  // Install additional acquia cms default themes.
  $tasks['install_space_headless_default_themes'] = [];

  return $tasks;
}

/**
 * Set the default admin and default themes.
 */
function install_space_headless_default_themes()
{
  \Drupal::configFactory()->getEditable('system.theme')->set('admin', 'gin')->save(TRUE);
  \Drupal::configFactory()->getEditable('system.theme')->set('default', 'space')->save(TRUE);
}
