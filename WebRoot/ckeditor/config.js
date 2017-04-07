/*
Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	//config.language = 'fr';
	//config.uiColor = '#AADC6E';
	config.language = 'zh-cn'; //配置语言
	config.removePlugins = 'elementspath';//去掉ckeditor下方的body和p标签
	CKEDITOR.config.uiColor = '#E0EEEE';
	config.toolbar='MyToolbar';
	//自定义的工具栏
	config.toolbar_MyToolbar=
	[
	 ['Source','-','Save','Preview','Print'],
	 ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Scayt'],
	 ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
	 ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
	 ['TextColor','BGColor'],
	 '/',
	 ['Styles','Format','Font','FontSize'],
	 ['Bold','Italic','Strike'],
	 ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
	 ['Link','Unlink','Anchor'],
	 ['Maximize','-','About']
	 ];
	//设置字体类型
	config.font_names = '宋体/SimSun;新宋体/NSimSun;仿宋/FangSong;楷体/KaiTi;仿宋_GB2312/FangSong_GB2312;'+  
        '楷体_GB2312/KaiTi_GB2312;黑体/SimHei;华文细黑/STXihei;华文楷体/STKaiti;华文宋体/STSong;华文中宋/STZhongsong;'+  
        '华文仿宋/STFangsong;华文彩云/STCaiyun;华文琥珀/STHupo;华文隶书/STLiti;华文行楷/STXingkai;华文新魏/STXinwei;'+  
        '方正舒体/FZShuTi;方正姚体/FZYaoti;细明体/MingLiU;新细明体/PMingLiU;微软雅黑/Microsoft YaHei;微软正黑/Microsoft JhengHei;'+  
        'Arial Black/Arial Black;'+ config.font_names;  
	//修改换行行为：回车，shift+回车
	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode = CKEDITOR.ENTER_P;
	
	config.smiley_images = ['1.png', '2.png', '3.png', '4.png', '5.png', '6.png', '7.png', '8.png', '9.png', '10.png', '11.png', '12.png', '13.png', '14.png', '15.png', '16.png', '17.png', '18.png', '19.png', '20.png', '21.png', '22.png', '23.png', '24.png', '25.png', '26.png', '27.png', '28.png', '29.png', '30.png','broken_heart.gif','envelope.gif','heart.gif','kiss.gif','lightbulb.gif','thumbs_down.gif','thumbs_up.gif'];
	config.smiley_columns = 6;
	config.image_previewText=' ';
	config.filebrowserBrowseUrl = '/forum/ckfinder/ckfinder.html';   
	config.filebrowserImageBrowseUrl = '/forum/ckfinder/ckfinder.html?type=Images';  
	config.filebrowserFlashBrowseUrl = '/forum/ckfinder/ckfinder.html?type=Flash';   
	config.filebrowserUploadUrl = '/forum/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files'; 
	config.filebrowserImageUploadUrl = '/forum/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images'; 
	config.filebrowserFlashUploadUrl = '/forum/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'; 
	config.filebrowserWindowWidth = '1000';   
	config.filebrowserWindowHeight = '700';
	
};
