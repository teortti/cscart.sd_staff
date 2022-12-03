<?php 


if ( !defined('AREA') ) { die('Access denied'); }
function fn_sd_staff_get_staff($id)
{
	$select_staff_upd = db_get_array('SELECT * FROM ?:staff_management WHERE id=?i', $id);
	foreach ($select_staff_upd as $key => $select_staff_upd_elem) {
        $select_staff_upd_elem['id'] = $select_staff_upd_elem['id'];
        $select_staff_upd_elem['first_name'] = $select_staff_upd_elem['first_name'];
        $select_staff_upd_elem['last_name'] = $select_staff_upd_elem['last_name'];
        $select_staff_upd_elem['function'] = $select_staff_upd_elem['function'];
        $select_staff_upd_elem['email'] = $select_staff_upd_elem['email'];
        $select_staff_upd_elem['internal_description'] = $select_staff_upd_elem['internal_description'];
        $select_staff_upd[$key] = $select_staff_upd_elem;
    }
    return $select_staff_upd;
}

function fn_sd_staff_update_staff($first_name,$last_name,$function,$email,$internal_description,$id)
{

	$update_staff = db_query('UPDATE ?:staff_management SET `first_name`=?s,`last_name`=?s,`function`=?s,`email`=?s,`internal_description`=?s WHERE id=?i', $first_name,$last_name,$function,$email,$internal_description,$id);
	return $update_staff;
}

function fn_sd_staff_add_staff($first_name,$last_name,$function,$email,$internal_description)
{

	$add_staff = db_query('INSERT INTO `cscart_staff_management`(`first_name`, `last_name`, `function`, `email`, `internal_description`) VALUES (?s,?s,?s,?s,?s)', $first_name,$last_name,$function,$email,$internal_description);
	return $add_staff;
}

function fn_sd_staff_delete_staff($id)
{

	$delete_staff = db_query('DELETE FROM `cscart_staff_management` WHERE id=?i', $id);
	return $delete_staff;
}
?>