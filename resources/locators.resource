*** Settings ***
Library           SeleniumLibrary

*** Variables ***

################## Universal Locators #######################
${save_universal}     //button[text() = "Save"]
${cancel_universal}     //button[text() = "Cancel"]
${save_and_next}     //button[text() = "Save & Next"]
${proceed_universal}     //button[text() = "Proceed"] 
${ok_universal}     //button[text() = "OK"]
${back_universal}     //button[text() = "Back"]
${next_universal}     //button[text() = "Next"]
${save_close_universal}     //button[text() = "Save & Close"]
${resume_universal}     //button[text() = "Resume"]
${https_advance}     //button[contains(text(), "Advanced")]
${https_proceed}     //a[text() = "Proceed to sorafuel.inovat8.com (unsafe)"]
${universal_view_results}     //button[text() = "View Results"]
${universal_result}     //button[text() = "Result"]
${delete_universal}     //button[text() = "Delete"]
${skip_universal}     //button[text() = "Skip"]
${loader_universal}     //div[@class= "mx-progress mx-progress-empty"]
${close_universal}     //button[@class = "close"]
${edit_universal}     //button[text() = "Edit"]
${delete_file_universal}     //button[text() = "Delete File"]
${save_instrument_universal}     //button[text() = "%s"]






################## Bezzomate #######################


${EXTENSION_PATH_MAIN}    C:/Users/laptop point/AppData/Local/Google/Chrome/User Data/Default/Extensions/nkbokoloejkhohjlickhfkjfmbmboaof/2.7.0_0
${EXTENSION_PATH_BRANCH}    C:/Users/DELL/AppData/Local/Google/Chrome/User Data/Default/Extensions/nkbokoloejkhohjlickhfkjfmbmboaof/2.7.0_0
${EXTENSION_PATH_NEW}    C:/Users/AhmedMazhar/AppData/Local/Google/Chrome/User Data/Default/Extensions/nkbokoloejkhohjlickhfkjfmbmboaof/2.7.0_1
${horizontal_scroller}    //div[@class="mxbt-table-wrapper"]
${bezzomate_category}    //div[contains(text(), "%s")]
${bezzomate_owner}    //div[text() = "%s"]/parent::td
${bezzomate_search_bar}    //div[@class = "mxbt-objs-menu-actions"]/input
${bezzomate_search_result}    //div[contains(text(), "%s")]
${bezzomate_one_instance}    //div[contains(text(), "1 to 1 of 1")]
${bezzomate_refresh}    //div[@class = "mxbt-refresh-btn"]
${bezzomate_table_indexes}    //div[@class = "mxbt-table-wrapper"]
${association_component_catholyte_anolyte}    //div[@class = "mxbt-search-references"]//div[contains(text(), "owner")]/ancestor::div[@class = "mxbt-search-references"]//div[contains(text(), "Anolyte_Component")]//ancestor::div[@class = "mxbt-search-references"]//div[contains(text(), "Catholyte_Component")]
${bezzomate_instance_composed}    //div[contains(text(), "%s")]
${master_data_id}    //div[text() = "%s"]
${experiment_id}    //div[contains(text(), "%s")]
${header_actions}    //div[contains(text(), "Actions")]
${search_option}    //div[contains(text(), "Search")]
${instance_bezzomate}    //div[@class = "mxbt-paging-position"]
${test_step_index}    //div[@class = "mxbt-table"]//th[%s]//span[contains(text(), "%s")]
${test_value_index}    //div[@class = "mxbt-table"]//td[%s]/div[contains(text(), "%s")]
${dc_readings}    //div[contains(text(), "%s")]







################## Login Page #######################
${login_credenetials}     //div/label[text() = "%s"]/following-sibling::div/input
${signin_button}     //button[text() = "Sign in"]

################## Dashboard Page #######################
${new_project_button}     //button[text() = "New Project"]
${project_owner}     //span[text() = "%s"]/parent::div[@class = "td clickable align-column-left"]
${sf_logo}     //span[@class = "mx-link mx-name-sidebarToggle3 toggle-btn custom-button-css btn-lg btn-block"]
${del_project}     //a[@class = "mx-link mx-name-actionButton3 DeleteIcon spacing-outer-left btn-lg"]
${del_proceed}     //button[text() = "Proceed"]
${del_progress_msg}     //div[text() = "Deleting in progress... Please wait while the operation completes."]
${project_button}     //span[@class = "mx-icon-lined mx-icon-blocks"]
${project_id}     //span[text() = "%s"]
${master_data_navigation}     //a[contains(text(), "Master Data")]/span
${mea_dashboard_navigation}     //a[text() = " MEA"]
${system_configuration_icon}     //span[@class = "mx-icon-lined mx-icon-wrench"]
${system_configuration_option}     //a[@title = "%s"]
${entries_navigation}     //div[@class = "tr"]/div[contains(@class, "clickable align-column-left")][1]
${entries_navigation_composed}     //div[@class = "tr"][%s]/div[contains(@class, "clickable align-column-left")][1]






################## New Project Page #######################
${new_project_id}     //div[@class = "mx-name-textBox4 mx-textbox form-group no-columns"]/input
${new_project_name}     //label[text() = "Project Name"]/parent::div/input
${new_project_detail}     //label[text() = "Project detail"]/parent::div/textarea
${new_project_date_icon}     //span[@class = "mx-icon-filled mx-icon-calendar"]
${selected_current_date}     //td[@class = "mx-calendar-day-month-current mx-calendar-day-selected mx-calendar-day-active mx-calendar-day-today" and text() = "%s"]
${new_project_start_date}     //div[@class= "mx-compound-control"]/input
${new_project_owner_dropdown}     //span[@class = "widget-combobox-icon-container"]
${new_project_owner_input}     //div/input[@class = "widget-combobox-input"]
${new_project_save}     //button[text() = "Save"]
${top_project_id}     //div[@class = "td td-borders clickable align-column-left"]/span[text() = "%s"]



################## Project Details Page #######################
${btn_initiate_mea}     //button[@class = "btn mx-button mx-name-actionButton9 spacing-outer-bottom btn-primary"]
${project_details_table_category}     //span[text() = "%s"]
${project_details_header}     //h2[contains(text(), "Project Details")]
${project_details_super_id}     //span[text() = "%s"]
${project_details_my_meas}     //a[text() = "My MEAs"]
${experiment_selection}     //span[text() = "%s"]/parent::div




################## Select Experiment Page #######################
${create_new_experiment}     //button[@class = "btn mx-button mx-name-actionButton2 spacing-outer-top spacing-outer-bottom-medium btn-primary"]
${start_new_experiment_checkbox}     //span[contains(text(), "%s")]/parent::div/parent::div[@class = "tr"]//input
${button_start}     //button[text() = "Start"]
${close_select_experiment}     //button[@class = "close"]
${header_project_id}     //h5[text() = "Project ID"]



################## Edit Experiment Page #######################
${input_experiment_id}     //div[@class = "mx-name-textBox1 mx-textbox form-group no-columns"]/input
${error_msg}     //div[@class = "alert alert-danger mx-validation-message"]
${cancel_experiment}     //h4[text() = "Edit Experiment"]/ancestor::div[@class = "modal-content mx-window-content"]//button[text() = "Cancel"]
${edit_experiment_header}     //h4[text() = "Edit Experiment"]


################## Standard Test Confirmation #######################
${experiment_yes}     //button[text() = "Yes"]
${experiment_no}     //button[text() = "No"]

################## Experiment Initiation Page #######################
${mea_user_input_id}     //span[text() = "MEA UserInput ID"]/parent::div/following-sibling::div//div[@class = "mx-name-textBox76 mx-textbox form-group no-columns"]/input
${meadetails_date_of_fabrication}     //span[contains(text(), "MEA Details")]/ancestor::div[@class= "col-lg-12 col-md col"]//label[text() = "Date of Fabrication"]/parent::div//div[@class = "mx-compound-control"]
${meadetails_date_icon}     //span[contains(text(), "MEA Details")]/ancestor::div[@class= "col-lg-12 col-md col"]//span[@class = "mx-icon-filled mx-icon-calendar"]
${select_current_date}     //td[@class = "mx-calendar-day-month-current" and text() = "%s"]
${meadetails_fabricated_by_div}     //label[text() = "Fabricated By"]/parent::div//div[@class = "widget-combobox"]
${meadetails_fabricated_by}     //label[text() = "Fabricated By"]/parent::div//div[@class = "widget-combobox"]//input
${initiation_header}     //h1[text() = "Experiment Initiation"]
${mea_super_id}     //input[@value = "%s"]
${id_catalyst_layer}     //label[text() = "%s"]/parent::div/div//input
${id_catalyst_layer_dropdown}     //label[text() = "%s"]/parent::div//*[local-name() = "svg" and @class = "widget-combobox-down-arrow-icon mx-icon-lined mx-icon-chevron-down"]
${anode_catalyst_noneditable}     //span[contains(text(), "Anode")]/ancestor::div[@class = "mx-name-layoutGrid5 mx-layoutgrid mx-layoutgrid-fluid"]//label[text() = "Catalyst"]/following-sibling::div/input[@autocomplete = "on"]
${cathode_catalyst_noneditable}     //span[contains(text(), "Cathode")]/ancestor::div[@class = "mx-name-layoutGrid2 mx-layoutgrid mx-layoutgrid-fluid spacing-outer-top-medium"]//label[text() = "Catalyst"]/following-sibling::div/input[@autocomplete = "on"]
${anode_additive_layer_id_dd_cross}     //div[@class = "mx-name-container41 border1 spacing-outer-top-medium"]//label[text() = "ID"]/parent::div//*[local-name() = "svg" and @class = "widget-combobox-clear-button-icon"]
${anode_additive_layer_id_input}     //div[@class = "mx-name-container41 border1 spacing-outer-top-medium"]//label[text() = "ID"]/parent::div//div[@class = "widget-combobox-selected-items"]/input
${anode_additive_layer_id_text}     //div[@class = "widget-combobox-selected-items"]//span[text() = "None"]

################## Testing Details #######################
${testing_details}     //h1[text() = "Testing Details"]
${label_testing_details}     //label[text() = "%s"]
${anolyte_catholyte_noneditable_attributes}     //div[@class= "col-lg col-md col"]//input[@disabled]
${anolyte_catholyte_noneditable_captured_solution}     //div[@class= "col-lg col-md col"]//select[@disabled]
${test_details_options_input}     //label[text() = "%s"]/parent::div/div//input
${test_details_options_clickable}     //label[text() = "%s"]/parent::div/div/div



################## Upload DC Power Supply Results #######################
${dc_page_header}     //h1[text() = "Upload DC Power Supply Results "]
${input_label}     //label[text() = "Label"]/parent::div//input
${import_option_select}     //label[text() = "%s"]/parent::div/input
${browse_drive}     //span[text() = "Browse..."]/parent::button
${input_label_dropdown}     //span[@class = "widget-combobox-icon-container"]
${error_ok}     //button[text() = "OK"]
${warning_file_not_created}     //p[text() = "The Google Drive file has not been created yet. Please check your internet connection or refresh the page and try again."]


################## Google Drive Page #######################
${select_folder}     //div[@class = "doclist-grid-folder-title-container"]//span[text() = "%s"]
${select_file_header}     //div[text() = "Select a file"]/parent::div
${folder_sorafuel}     //td[text() = "SoraFuel"]
${my_drive}     //div[text() = "My Drive"]
${iframe}     //iframe[@class = "picker-frame picker-dialog-frame"]
${iframe1}     //iframe[@class= "picker shr-bb-shr-cb-shr-hc picker-dialog-bg"]
${file_selection}     //span[text() = "%s"]


################## Upload GC Results #######################
${gc_header}     //h1[text() = "Upload Gas Chromatography (GC) Results "]
${upload_gc_files}     //button[text() = "Upload GC Files"]
${upload_gc_drive_header}     //h4[text() = "GC file upload Using Google Drive"]
${fid_run_browse_drive}     //h4[text() = "%s"]/parent::div//span[text() = "Browse..."]/parent::button
${time_label}     //label[text() = "Time (minutes)"]/parent::div/div[@class = "col-sm-9"]/input

################## Upload PStat EIS Page #######################
${p_stat_eis header}     //h1[text() = "Upload Potentiostat (PStat EIS) Results "]


################## Upload PS Stat Page #######################
${p_stat_lsv_header}     //h1[text() = "Upload Potentiostat (PStat LSV) Results "]


################## MEA Dashboard Page #######################
${mea_dashboard_header}     //h2[contains(text(), "MEA Dashboard")]
${mea_dashboard_superid}     //div[text() = "%s"]/ancestor::tr
${mea_search}     //div[@class = "mx-grid-controlbar"]//button[text() = "Search"]




################## MEA Search Page #######################
${mea_search_node}     //div[@class = "mx-tabcontainer mx-name-tabContainer1 spacing-outer-top-large tab-lined"]//label[text() = "Super ID"]
${input_search_filter_clickable}     //label[contains(text(), "%s")]/ancestor::div[@class = "mx-grid-search-item"]//input/parent::div
${input_search_filter}     //label[contains(text(), "%s")]/ancestor::div[@class = "mx-grid-search-item"]//input
${select_search_filter_clickable}     //label[contains(text(), "%s")]/ancestor::div[@class = "mx-grid-search-item"]//select/parent::div
${select_search_filter_option}     //label[contains(text(), "%s")]/ancestor::div[@class = "mx-grid-search-item"]//select/option[contains(text(), "%s")]
${search_grid_search}     //div[@class = "mx-grid-searchbar"]//button[text() = "Search"]
${search_result_superid}     //tr[@class = "mx-name-index-0"]//div[text() = "%s"]




################## MEA Edit Page #######################
${mea_edit_header}     //h1[text() = "MEA Edit"]
${select_instrument}     //input[@value = "%s"]
${file_upload_header}     //h4[text() = "File Upload"]





################## Master Data Page #######################
${capture_solution}     //label[text() = "Captured solution"]/parent::div/select/option[text() = "%s"]
${master_data_header}     //h1[text() = "Master Data"]
${attribute_master_date}     //span[text() = "%s"]
${create_new_master_date}     //button[text() = "%s"]
${polarity_master_data}     //label[text() = "Polarity"]/parent::div/select/option[text() = "%s"]
${element_master_data_attribute}      //label[text() = "%s"]/ancestor::div/select/option[text() = "%s"]
${error_text_filter_master_data}      //div[text() = "The attribute type being used for Text filter is not 'Hashed string or String'"]
${id_master_date_attributes}     //label[contains(text(), "ID")]/parent::div//input
${validation_error_master_date}     //div[@class= "alert alert-danger mx-validation-message"]
${del_master_data_id}     //span[text() = "%s"]/ancestor::div[@class = "tr"]//span[@class = "mx-icon-lined mx-icon-trash-can"]
${del_master_data_name}     //span[text() = "%s"]/parent::div/following-sibling::div//a[@class = "mx-link mx-name-actionButton3 DeleteIcon spacing-outer-left btn-lg"]
${del_master_data_label}     //span[text() = "%s"]/parent::div/following-sibling::div//a[@class = "mx-link mx-name-actionButton5 DeleteIcon spacing-outer-left btn-lg"]
${grid_membrane_dropdown}     //label[text() = "Grid location"]/parent::div//select
${grid_membrane_string}     //label[text() = "Grid location"]/parent::div//input
${specific_master_date_attributes}     //label[contains(text(), "%s")]/parent::div//input
${specific_master_data_attribute_clickable}     //label[contains(text(), "%s")]/parent::div
${dropdown_master_date_attributes}     //label[contains(text(), "%s")]/parent::div//select
${dropdown_option_master_date}     //option[text() = "%s"]
${dd_icon_option_master_date}     //label[contains(text(), "Manufactured by")]/parent::div//div[@class = "widget-combobox-down-arrow"]
${dd_icon_components_master_date}     //label[contains(text(), "Components")]/parent::div//div[@class = "widget-combobox-down-arrow"]



################## User Management Page #######################
${user_management_header}     //h2[text() = "Account Overview"]
${new_local_user}     //button[text() = "New local user"]
${new_account_header}     //h4[text() = "New Account"]
${new_user_input fields}     //label[text() = "%s"]/parent::div//input
${header_select_user_roles}     //h4[text() = "Select user roles"]
${option_user_role}     //tr[@class = "mx-name-index-1"]/td[@data-id = "142"]//div[text() = "User"]
${password_error}     //p[text() = "Password has an issue: Password does not meet password policy criteria:"]
${users_table}     //div[text() = "%s"]



################## Results Page #######################
${header_results_page}     //h2[contains(text(), "Experiment Results and Visualizations")]
${category_results_page}     //h3[text() = "%s"]
${category_iframe_results_page}     //h3[text() = "%s"]/ancestor::header/following-sibling::div//iframe
${file_name_iframe}     //div[text() = "%s"]
${category_error}     //span[contains(text(), "%s")]
${sub_category_eis_results}     //a[text() = "EIS Results"]














