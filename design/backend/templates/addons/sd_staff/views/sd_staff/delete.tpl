{assign var="id" value=$sd_staff_id}
{fn_sd_staff_delete_staff($id)}
{header("Location: admin.php?dispatch=sd_staff.manage")}