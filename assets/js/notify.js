
 alertify.set('notifier','position', 'top-right');
 alertify.defaults.glossary.title = 'NOTIFICATION';

 var notify = function (e,msg) {
	// body...

switch (e) {
   case 'success':
   		alertify.success(msg);
     break;
   case 'warning':
		alertify.warning(msg);
     break;
   default:
   		alertify.alert(msg);
     break;
 } 
}

