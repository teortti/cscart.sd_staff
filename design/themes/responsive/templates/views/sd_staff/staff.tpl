

{include file="common/pagination.tpl"}
<table class="ty-table">
    <thead>
    <tr>
        <th>{__("id")}</th>
        <th>Function</th>
        <th>Full name</th>
        <th>{__("email")}</th>
        <th>Internal description</th>
    </tr>
    </thead>
    {foreach from=$select_staff item="staff_data"}
        <tr>
            <td class="ty-orders-search__item"><strong>#{$staff_data.id}</strong></td>
            <td class="ty-orders-search__item">{$staff_data.function}</td>
            <td class="ty-orders-search__item">{$staff_data.first_name} {$staff_data.last_name}</td>
            <td class="ty-orders-search__item">{$staff_data.email}</td>
            <td class="ty-orders-search__item">{$staff_data.internal_description}</td>
        </tr>
        {foreachelse}
        <tr class="ty-table__no-items">
            <td colspan="7">
                <p class="ty-no-items">No data found</p>
            </td>
        </tr>
    {/foreach}
</table>

{include file="common/pagination.tpl"}

{capture name="mainbox_title"}Staff{/capture}
