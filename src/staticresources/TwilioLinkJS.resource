var dialer = document.getElementById('06690000005l55T');
var mysrc = dialer.getAttribute("src");
var name = 'id';
name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
var regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
var results = regex.exec(mysrc);
console.log('results=='+results);
var result = '';
if( results != null && results != undefined ){
	if( results.length == 2 )
		result = results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	console.log( 'result=='+result);
	if( result != '' ){
		dialer.style.width = '200px';
		dialer.style.height = '600px';
	}else{
		dialer.style.width = '200px';
		dialer.style.height = '20px';
	}
}else{
	dialer.style.width = '200px';
	dialer.style.height = '20px';
}