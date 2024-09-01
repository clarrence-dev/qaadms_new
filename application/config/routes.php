<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['user_controller'] = 'User';
$route['login'] = 'Authentication';
$route['auth/login_submit'] = 'authentication/login_submit';
$route['auth/logout'] = 'authentication/logout';

$route['admin/dashboard'] = ' admin/admin/dashboard';
$route['admin/department'] = 'admin/departments/index';
$route['admin/department/create'] = 'admin/departments/create';
$route['admin/department/delete/(:num)'] = 'admin/departments/delete/$1';
$route['admin/department/edit/(:num)'] = 'admin/departments/edit/$1';

$route['admin/office'] = 'admin/offices/index';
$route['admin/office/create'] = 'admin/offices/create';
$route['admin/office/delete/(:num)'] = 'admin/offices/delete/$1';
$route['admin/office/edit/(:num)'] = 'admin/offices/edit/$1';

// requesters



$route['requester/auditee_afsform'] = 'requester/auditee_afsform/index';
$route['requester/auditee_afsform/submit'] = 'requester/auditee_afsform/create';


$route['emanuals/list'] = 'common/emanuals/index';
$route['emanuals/view/(:num)'] = 'common/emanuals/view_manual/$1';



// requester routes
$route['dcrform'] = 'common/dcrform/index';
$route['requester/dcrform/submit'] = 'common/dcrform/submit';
$route['requester/dcrform/view_pdf/(:any)'] = 'common/dcrform/view_pdf/$1';


// department head routes
$route['depthead/dcrform/update'] = 'common/dcrform/update_dcr_form';
$route['depthead/dcrform/view_pdf/(:any)'] = 'common/dcrform/view_pdf/$1';


// document controller routes
$route['dcrform/list'] = 'common/dcrform/list';
$route['docucontroller/dcrform/update/(:any)'] = 'common/dcrform/update_dcrform_docucontroller/$1';
$route['docucontroller/dcrform/generate_pdf/(:any)'] = 'common/dcrform/generate_pdf/$1';

//qaie_director
$route['qaiedirector/dcrform/update/(:any)'] = 'common/dcrform/update_dcrform_qaie_director/$1';


// api
$route['api/users']['GET'] = 'api/users/index';
$route['api/users/(:num)']['GET'] = 'api/users/view/$1';
$route['api/users']['POST'] = 'api/users/create';
$route['api/users/(:num)']['PUT'] = 'api/users/update/$1';
$route['api/users/(:num)']['DELETE'] = 'api/users/delete/$1';

// departments
$route['api/departments']['GET'] = 'api/departments/index';
$route['api/departments/(:num)']['GET'] = 'api/departments/view/$1';
$route['api/departments']['POST'] = 'api/departments/create';
$route['api/departments/(:num)']['PUT'] = 'api/departments/update/$1';
$route['api/departments/(:num)']['DELETE'] = 'api/departments/delete/$1';

// offices
$route['api/offices']['GET'] = 'api/offices/index';
$route['api/offices/(:num)']['GET'] = 'api/offices/view/$1';
$route['api/offices']['POST'] = 'api/offices/create';
$route['api/offices/(:num)']['PUT'] = 'api/offices/update/$1';
$route['api/offices/(:num)']['DELETE'] = 'api/offices/delete/$1';