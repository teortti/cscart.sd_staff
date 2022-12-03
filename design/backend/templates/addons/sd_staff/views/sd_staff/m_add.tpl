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
                            <h2 class="title__heading " title="Staff">Add staff</h2>
            
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

            <!--tools_manage_pages_buttons--></div>
            
        </div>
    <!--actions_panel--></div>

<div class="content page-content  ufa">
    <div class="content-wrap">
        <div class="cm-tabs-content">
            <form method="post" name="sd_staff_tree_form" id="sd_staff_tree_form" class="form-horizontal form-edit" enctype="multipart/form-data">
                <div id="content_basic" class>
                    <div class="in collapse" style="height: auto;">
                        <fieldset>
                            <div class="control-group">
                                <label for="elm_staff_name" class="control-label cm-required">Имя:</label>
                                <div class="controls">
                                    <input type="text" name="first_name" id="elm_staff_name">
                                </div>
                            </div>

                            <div class="control-group">
                                <label for="elm_staff_surname" class="control-label cm-required">Фамилия:</label>
                                <div class="controls">
                                    <input type="text" name="last_name" id="elm_staff_surname">
                                </div>
                            </div>

                            <div class="control-group">
                                <label for="elm_staff_function" class="control-label cm-required">Должность:</label>
                                <div class="controls">
                                    <input type="text" name="function" id="elm_staff_function" >
                                </div>
                            </div>

                            <div class="control-group">
                                <label for="elm_staff_email" class="control-label cm-required">Электронная почта:</label>
                                <div class="controls">
                                    <input type="text" name="email" id="elm_staff_email">
                                </div>
                            </div>

                            <div class="control-group ">
                                <label for="elm_page_descr" class="control-label">Описание:</label>
                                <div class="controls">
                                    <div class="redactor-box redactor2-box">

                                        <textarea id="elm_page_descr"
                        name="internal_description"
                        cols="55"
                        rows="8"
                        class="cm-wysiwyg input-large"></textarea>

                                    </div>
                                </div>
                            </div>
                            <input type="submit" name="submit" class="btn btn-default btn-live-edit cm-post" value="Добавить">
                        </fieldset>
                    </div>
                </div>
        

    

</form>
{if $submit}

                    {fn_sd_staff_add_staff($first_name,$last_name,$function,$email,$internal_description)}
                    {header("Location: admin.php?dispatch=sd_staff.manage")}
                    {/if}
        </div>
    </div>
</div>