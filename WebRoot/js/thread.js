function getData(){
	var editor_data = CKEDITOR.instances.editor.getData();
	alert(editor_data);
}
window.onload = function(){
	CKEDITOR.replace('editor');
};
//function editorFocus(){
//	var editor = CKEDITOR.instances.editor;
//	editor.focus();	
//}

$(document).ready(function(){
	
	$("#addNewThread").click(function(){
		$("#threadTitle").focus();
	});
	$("#reply").click(function(){
		editorFocus();		
	});	
});