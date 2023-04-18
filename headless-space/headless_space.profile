
/**
 * Set the default admin and default themes.
 */
function install_headless_space_default_themes()
{
  \Drupal::configFactory()->getEditable('system.theme')->set('admin', 'gin')->save(TRUE);
  \Drupal::configFactory()->getEditable('system.theme')->set('default', 'space')->save(TRUE);
}
