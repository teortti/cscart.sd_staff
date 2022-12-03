<?php 


if ( !defined('AREA') ) { die('Access denied'); }

fn_register_hooks(
	'get_staff',
	'update_staff',
	'add_staff',
	'delete_staff'
);


?>