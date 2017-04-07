$(document).ready(function() {
    $('#emailForm,#passwordForm,#addPerson,#loginForm,#categoryForm,#boardForm')
        .bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                'person.account': {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 4,
                            max: 16,
                            message: '用户名长度必须为4~16字符'
                        },
                        regexp: {
                        	regexp: /^[a-zA-Z0-9_]+$/,
                        	message: '用户名只能由字母、数字和下划线组成'
                    	}
                    }
                    
                },
                'person.email': {
                    validators: {
                        notEmpty: {
                            message: '邮箱不能为空'
                        },
                        emailAddress: {
                            message: '邮箱格式不正确'
                        }
                    }
                },
                'person.password': {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },                   
                    	stringLength: {
                            min: 6,
                            max: 16,
                            message: '密码长度必须为6~16个字符'
                        },
                    	identical: {
                       		field: 'confirmPassword',
                        	message: '两次输入的密码不一致'
                    	}
                    }
                },
                newPassword: {
                    validators: {
                        notEmpty: {
                            message: '新密码不能为空'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {
                        	field: 'person.password',
                        	message: '两次输入的密码不一致'
                   		}
                    }
                },
                'category.id':{
                	validators: {
                        notEmpty: {
                            message: '不能为空'
                        },                   
                    	stringLength: {
                            min: 3,
                            max: 8,
                            message: '长度必须为3~8个字符'
                        }
                    }
                },
                'board.name':{
                	validators: {
                        notEmpty: {
                            message: '不能为空'
                        },                   
                    	stringLength: {
                            min: 3,
                            max: 8,
                            message: '长度必须为3~8个字符'
                        }
                    }
                },
                'picture':{
                	validators: {
                        notEmpty: {
                            message: '请上传图标'
                        }                
                    }
                },
                'board.description':{
                	validators: {
                        notEmpty: {
                            message: '请填写描述'
                        },                   
                    	stringLength: {
                            min: 10,
                            max: 40,
                            message: '长度必须为10~40个字符'
                        }
                    }
                }
            }
        });
});