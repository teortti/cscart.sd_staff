{script src="js/tygh/backend/pages_bulk_edit.js"}
{$has_permission=fn_check_permissions("sd_staff", "update", "admin", "POST")}

<div class="actions nav__actions cm-sticky-scroll" data-ca-stick-on-screens="sm-large,md,md-large,lg,uhd" data-ca-top="45" data-ca-padding="45" id="actions_panel" style="position: sticky; top: 45px;">
        <div class="actions__wrapper ">
        
        <div class="btn-bar-left nav__actions-back mobile-hidden">
            <div class="btn-group" id="last_edited_items">
    <a class="btn cm-back-link"><span class="cs-icon icon-arrow-left"></span></a>
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
           
    <!--last_edited_items--></div>
        </div>
        <div class="btn-bar-left overlay-navbar-open-container mobile-visible">
            <a role="button" class="btn mobile-visible mobile-menu-toggler" data-ca-mobile-menu-is-convert-dropdown="true">
                <span class="cs-icon icon icon-align-justify mobile-visible-inline overlay-navbar-open"></span>
            </a>
        </div>
        <div class="title nav__actions-title ">
                            <h2 class="title__heading " title="Staff">Staff</h2>
            
            <!--mobile quick search-->
            <div class="mobile-visible pull-right search-mobile-group cm-search-mobile-group" data-ca-search-mobile-back="#search_mobile_back" data-ca-search-mobile-btn="#search_mobile_btn" data-ca-search-mobile-block="#search_mobile_block" data-ca-search-mobile-input="#gs_text_mobile">
                <button class="btn search-mobile-btn" id="search_mobile_btn"><span class="cs-icon icon-search search-mobile-icon"></span></button>
                <div class="search search-mobile-block cm-search-mobile-search hidden" id="search_mobile_block">
                    <button class="search-mobile-back" type="button" id="search_mobile_back"><span class="cs-icon icon-remove"></span></button>
                    <button class="search_button search-mobile-button" type="submit" id="search_button_mobile" form="global_search"><span class="cs-icon icon-search"></span></button>
                    <label for="gs_text_mobile" class="search-mobile-label"><input type="text" class="cm-autocomplete-off search-mobile-input" id="gs_text_mobile" name="q" value="" form="global_search" placeholder="Найти" disabled="" autocomplete="off"></label>
                </div>
            </div>
            <!--mobile end quick search-->

            </div>

            
            <div class=" btn-bar btn-toolbar nav__actions-bar dropleft" id="tools_manage_pages_buttons">
                                
    <div class="help-center__toolbar">
        <a class="btn help-center__show-help-center">
            <span class="cs-icon icon-question-sign help-center__show-help-center--icon"></span>
        </a>
    </div>


    

                                <div class="nav__actions-adv-buttons adv-buttons" id="tools_manage_pages_adv_buttons">
                                                    
            <div class="btn-group ">
            <a href="admin.php?dispatch=sd_staff.m_add" class="btn dropdown-toggle">
                                <span class="cs-icon dropdown-icon icon-plus"></span>
                                            </a>
            
        </div>
    
            
                <!--tools_manage_pages_adv_buttons--></div>
                
            <!--tools_manage_pages_buttons--></div>
            
        </div>
    <!--actions_panel--></div>



	<div class="admin-content-wrapper ">

		<div class="content page-content  ufa">
			<div class="content-wrap">
				<div id="content_manage_pages">
					<form method="post" name="sd_staff_form" class="cm-processed-form cm-check-changes" id="sd_staff_form">
						<div class="cm-pagination-container" id="pagination_contents">
							<div class="items-container multi-level pages-tree__content">
								<div class="longtap-selection" data-ca-bulkedit-component="tableWrapper">
									{if $select_staff}
									<table width="100%" class="table table-tree table-middle table--relative table-nobg table-responsive">
										<thead data-ca-bulkedit-default-object="true" data-ca-bulkedit-component="defaultObject">
											<tr>
												<th class="left mobile-hide" width="7%">ID</th>
												<th class="left" width="70%">Name</th>
												<th class="right" width="10%">Status</th>
											</tr>
											<tr class="cm-row-status-a"></tr>
										</thead>
									</table>
								</div>
			

					{foreach from=$select_staff item="staff_data"}
						<div class="longtap-selection" data-ca-bulkedit-component="tableWrapper">
									<table width="100%" class="table table-tree table-middle table--relative table-nobg table-responsive">
										
											<tr class="cm-row-status-a" >

												<td class="left mobile-hide" width="7%">{$staff_data.id}</td>

												<td class="row-status" width="70%">
													<div class="text-over" style="padding-left: 0px;">
														<span style="padding-left: 3px;">&nbsp;</span>
												{$staff_data.first_name} {$staff_data.last_name}
													</div>
												</td>
												<td width="10%" class="mobile-hide" data-th="Инструменты">
													<div class="hidden-tools">
														<div class="btn-group dropleft">
															<a href="#" class="btn dropdown-toggle" data-toggle="dropdown">
                             <span class="cs-icon dropdown-icon icon-cog dropdown-icon--tools"></span>
                                                    <span class="caret"></span>
                            								</a>
                            									<ul class="dropdown-menu">
                            										<li>{btn type="list" text=__("delete") class="cm-confirm" href="sd_staff.delete?sd_staff_id=`$staff_data.id`" method="POST"}</li>
																	<li>{btn type="list" text=__("edit") href="sd_staff.update?sd_staff_id=`$staff_data.id`" method="GET" }


																	</li>
																	
                            									</ul>
														</div>
													</div>
												</td>
												<td class="nowrap right" width="10%">
													<div class="cm-popup-box dropdown dropleft">
            <a href="#" id="sw_select_21_wrap" class="btn-text status-dropdown-a btn dropdown-toggle cm-combination " data-toggle="dropdown">
                                        Вкл.
                                <span class="caret"></span>
        </a>
                            <ul class="dropdown-menu">
                                                                                                                <li class="disabled">
                    <a class=" status-link-a active " href="admin.php?dispatch=tools.update_status&amp;id=$staff_data.id&amp;status=A&amp;table=sd_staff&amp;id_name=sd_staff_id" onclick="return fn_check_object_status(this, 'a', '');" data-ca-event="ce.update_object_status_callback" title="Вкл.">Вкл.</a>
                </li>
                                <li>
                    <a class=" status-link-d cm-ajax cm-post " href="admin.php?dispatch=tools.update_status&amp;id=$staff_data.id&amp;status=D&amp;table=sd_staff&amp;id_name=sd_staff_id" onclick="return fn_check_object_status(this, 'd', '');" data-ca-event="ce.update_object_status_callback" title="Выкл.">Выкл.</a>
                </li>
                                <li>
                    <a class=" status-link-h cm-ajax cm-post " href=admin.php?dispatch=tools.update_status&amp;id=$staff_data.id&amp;status=H&amp;table=sd_staff&amp;id_name=sd_staff_id" onclick="return fn_check_object_status(this, 'h', '');" data-ca-event="ce.update_object_status_callback" title="Скрыто">Скрыто</a>
                </li>
                                        
                    </ul>
            </div>
												</td>
											</tr>
											<tr class="cm-row-status-a"></tr>
									</table>
								</div>
					{/foreach}
			{else}
				<p class="no-items">{__("no_data")}</p>
			{/if}
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>