<div class="navbar navbar-inverse navbar-fixed-top" >
	<div class="navbar-inner">
    	<div class="container">
			<a class="brand" href="/">思君堂</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="active">
						<a>农历七月二十九   [杨公忌日，大事勿用]</a>
					</li>                            
				</ul>
				<div id="div_login" class="pull-right">
					<?php
						global $user;
					?>
					<?php if($user && $user->uid != 0): ?>
						<ul class="nav">
							<li>
								<a href="/user/info">未读消息<span class="badge">42</span></a>
							</li>
							<li>
								<a href="/user"><?php echo $user->name;?></a>
							</li>
							<li class="logout last">
								<a href="/user/logout">登出</a>
							</li>
						</ul>
					<?php else:?>
						<form class="navbar-form" action="/user" method="post" id="user-login" accept-charset="UTF-8">
							<input type="text" class="input-small required" id="edit-name" name="name" value="" placeholder="用户名">
							<input type="password" id="edit-pass" name="pass" class="input-small required" placeholder="密码"/>
							<input type="hidden" name="form_id" value="user_login"/>
							<button type="submit" class="btn" id="edit-submit" name="op">登录</button>
							<a href="/user/register" type="submit" class="btn">注册</a>
						</form>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</div>
        
<?php
$requestPath = request_path ();
if (strlen ( $requestPath ) == 0) {
	include_once 'page.home.tpl.php';
	// include_once 'page.other.php';
} else if (strcmp ( "user", $requestPath ) == 0) {
	include_once 'page.user.tpl.php';
} else if(strpos($requestPath, "content/") === 0) {
	include_once 'page.hero.tpl.php';
// 	print render($page['content']);
} else {
	include_once 'page.tpl.other.php';
}

?>

<div class="navbar navbar-fixed-bottom">
	<div class="navbar-inner">
		<div class="container">
			<div class="nav-collapse collapse pull-right">
				<ul class="nav">
					<li class="active">
						<a href="">帮助</a>
					</li>                            
					<li class="active">
						<a href="">实例</a>
					</li>                            
					<li class="active">
						<a href="">在线客服</a>
					</li>                            
					<li class="active">
						<a href="">关于我们</a>
					</li>                            
				</ul>
			</div>
		</div>
	</div>
</div>
