<?php 


if (!defined('BOOTSTRAP')) { die('Access denied'); }

use Tygh\Registry;

$select_staff = db_get_array('SELECT * FROM ?:staff_management');

$sd_staff_id = $_GET['sd_staff_id'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$function = $_POST['function'];
$email = $_POST['email'];
$internal_description = $_POST['internal_description'];
$submit = $_POST['submit'];


if (!empty($select_staff)) {
    foreach ($select_staff as $key => $staff_data) {
        $staff_data['id'] = $staff_data['id'];
        $staff_data['first_name'] = $staff_data['first_name'];
        $staff_data['last_name'] = $staff_data['last_name'];
        $staff_data['function'] = $staff_data['function'];
        $staff_data['email'] = $staff_data['email'];
        $staff_data['internal_description'] = $staff_data['internal_description'];
        $select_staff[$key] = $staff_data;
    }

    Registry::get('view')->assign('select_staff', $select_staff);
}

Registry::get('view')->assign('sd_staff_id', $sd_staff_id);
Registry::get('view')->assign('first_name', $first_name);
Registry::get('view')->assign('last_name', $last_name);
Registry::get('view')->assign('function', $function);
Registry::get('view')->assign('email', $email);
Registry::get('view')->assign('internal_description', $internal_description);
Registry::get('view')->assign('submit', $submit);

?>