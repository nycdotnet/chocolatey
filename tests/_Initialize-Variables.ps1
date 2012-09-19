﻿function Initialize-Variables {
  $script:error_message = ''
  $script:packageName = ''
  $script:packageFolder = ''
  $script:packageVersion = ''
  $script:packageVersions  = @()
  $script:packagesConfigPath  = ''
  $script:selector  = ''
  $script:version = ''
  $script:source = ''
  $script:installerArguments = ''
  $script:FilePath = ''
  $script:WorkingDirectory = ''
  $script:file = ''
  $script:arguments = ''
  $script:chocoInstallLog = ''
  $script:name = ''
  $script:path = ''
  $script:configValue = ''
  $script:action = ''
  $script:extension = ''
  
  # function calls
  $script:update_sessionenvironment_was_called = $false
  $script:chocolatey_install_was_called = $false
  $script:chocolatey_installall_was_called = $false
  $script:chocolatey_installifmissing_was_called = $false
  $script:chocolatey_list_was_called = $false
  $script:chocolatey_nuget_was_called = $false
  $script:chocolatey_pack_was_called = $false
  $script:chocolatey_packagesconfig_was_called = $false
  $script:chocolatey_push_was_called = $false
  $script:chocolatey_rubygem_was_called = $false
  $script:chocolatey_update_was_called = $false
  $script:chocolatey_version_was_called = $false
  $script:chocolatey_webpi_was_called = $false
  $script:chocolatey_windowsfeatures_was_called = $false
  $script:chocolatey_cygwin_was_called = $false
  $script:delete_existingerrorlog_was_called = $false
  $script:generate_binfile_was_called = $false
  $script:get_configvalue_was_called = $false
  $script:get_chocolateybins_was_called = $false
  $script:get_latestpackageversion_was_called = $false
  $script:get_longpackageversion_was_called = $false
  $script:get_packagefolderversions_was_called = $false
  $script:get_packagefoldersforpackage_was_called = $false
  $script:get_versionsforcomparison_was_called = $false
  $script:help_was_called = $false
  $script:remove_lastinstalllog_was_called = $false
  $script:run_chocolateyps1_was_called = $false
  $script:run_chocolateyprocess_was_called = $false
  $script:run_nuget_was_called = $false
  $script:start_process_was_called = $false
  $script:get_chocolateyunzip_was_called = $false
  $script:get_chocolateywebfile_was_called = $false
  $script:get_webfile_was_called = $false
  $script:install_chocolateydesktoplink_was_called = $false
  $script:install_chocolateypinnedtaskbaritem_was_called = $false
  $script:install_ChocolateyExplorerMenuItem_was_called = $false
  $script:install_ChocolateyFileAssociation_was_called = $false  
  $script:install_chocolateyinstallpackage_was_called = $false
  $script:install_chocolateypackage_was_called = $false
  $script:install_chocolateypath_was_called = $false
  $script:install_chocolateyenvironmentvariable_was_called = $false
  $script:install_chocolateypowershellcommand_was_called = $false
  $script:install_chocolateyzippackage_was_called = $false
  $script:start_chocolateyprocessasadmin_was_called = $false
  $script:write_chocolateyfailure_was_called = $false
  $script:write_chocolateysuccess_was_called = $false  
  
  # return values
  $script:chocolatey_install_return_value =  ''
  $script:chocolatey_installall_return_value = ''
  $script:chocolatey_installifmissing_return_value = ''
  $script:chocolatey_list_return_value = ''
  $script:chocolatey_nuget_return_value = ''
  $script:chocolatey_pack_return_value = ''
  $script:chocolatey_packagesconfig_return_value = ''
  $script:chocolatey_push_return_value = ''
  $script:chocolatey_rubygem_return_value = ''
  $script:chocolatey_update_return_value = ''
  $script:chocolatey_version_return_value = ''
  $script:chocolatey_webpi_return_value = ''
  $script:chocolatey_windowsfeatures_return_value = ''
  $script:chocolatey_cygwin_return_value = ''
  $script:delete_existingerrorlog_return_value = ''
  $script:generate_binfile_return_value = ''
  $script:get_configvalue_return_value = ''
  $script:get_chocolateybins_return_value = ''
  $script:get_latestpackageversion_return_value = ''
  $script:get_longpackageversion_return_value = ''
  $script:get_packagefolderversions_return_value = ''
  $script:get_packagefoldersforpackage_return_value = ''
  $script:get_versionsforcomparison_return_value = ''
  $script:help_return_value = ''
  $script:remove_lastinstalllog_return_value = ''
  $script:run_chocolateyps1_return_value = ''
  $script:run_chocolateyprocess_return_value = ''
  $script:run_nuget_return_value = ''
  $script:start_process_return_value = ''
  $script:get_chocolateyunzip_return_value = ''
  $script:get_chocolateywebfile_return_value = ''
  $script:get_webfile_return_value = ''
  $script:install_chocolateydesktoplink_return_value = ''
  $script:install_chocolateyinstallpackage_return_value = ''
  $script:install_chocolateypackage_return_value = ''
  $script:install_chocolateypath_return_value = ''
  $script:install_chocolateyenvironmentvariable_return_value = ''
  $script:install_chocolateypowershellcommand_return_value = ''
  $script:install_chocolateyzippackage_return_value = ''
  $script:start_chocolateyprocessasadmin_return_value = ''
  $script:write_chocolateyfailure_return_value = ''
  $script:write_chocolateysuccess_return_value = ''  
  
  # execute actuals
  $script:exec_update_sessionenvironment_actual = $false
  $script:exec_chocolatey_install_actual = $false
  $script:exec_chocolatey_installall_actual = $false
  $script:exec_chocolatey_installifmissing_actual = $false
  $script:exec_chocolatey_list_actual = $false
  $script:exec_chocolatey_nuget_actual = $false
  $script:exec_chocolatey_pack_actual = $false
  $script:exec_chocolatey_packagesconfig_actual = $false
  $script:exec_chocolatey_push_actual = $false
  $script:exec_chocolatey_rubygem_actual = $false
  $script:exec_chocolatey_update_actual = $false
  $script:exec_chocolatey_version_actual = $false
  $script:exec_chocolatey_webpi_actual = $false
  $script:exec_chocolatey_windowsfeatures_actual = $false
  $script:exec_chocolatey_cygwin_actual = $false
  $script:exec_delete_existingerrorlog_actual = $false
  $script:exec_generate_binfile_actual = $false
  $script:exec_get_configvalue_actual = $false
  $script:exec_get_chocolateybins_actual = $false
  $script:exec_get_latestpackageversion_actual = $false
  $script:exec_get_longpackageversion_actual = $false
  $script:exec_get_packagefolderversions_actual = $false
  $script:exec_get_packagefoldersforpackage_actual = $false
  $script:exec_get_versionsforcomparison_actual = $false
  $script:exec_help_actual = $false
  $script:exec_remove_lastinstalllog_actual = $false
  $script:exec_run_chocolateyps1_actual = $false
  $script:exec_run_chocolateyprocess_actual = $false
  $script:exec_run_nuget_actual = $false
  $script:exec_start_process_actual = $false
  $script:exec_get_chocolateyunzip_actual = $false
  $script:exec_get_chocolateywebfile_actual = $false
  $script:exec_get_webfile_actual = $false
  $script:exec_install_chocolateydesktoplink_actual = $false
  $script:exec_install_ChocolateyPinnedTaskBarItem_actual = $false  
  $script:exec_install_ChocolateyExplorerMenuItem_actual = $false
  $script:exec_install_chocolateyfileassociation_actual = $false  
  $script:exec_install_chocolateyinstallpackage_actual = $false
  $script:exec_install_chocolateypackage_actual = $false
  $script:exec_install_chocolateypath_actual = $false
  $script:exec_install_chocolateypowershellcommand_actual = $false
  $script:exec_install_chocolateyzippackage_actual = $false
  $script:exec_start_chocolateyprocessasadmin_actual = $false
  $script:exec_write_chocolateyfailure_actual = $false
  $script:exec_write_chocolateysuccess_actual = $false
  
  # actual function calls
  $script:get_configvalue_actual_was_called = $false
  $script:get_longpackageversion_actual_was_called = $false
  $script:get_packagefoldersforpackage_actual_was_called = $false
  $script:get_packagefolderversions_actual_was_called = $false
  $script:get_versionsforcomparison_actual_was_called = $false
}