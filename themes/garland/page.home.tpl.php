<div class="navbar navbar-inverse navbar-fixed-top" >
            <div class="navbar-inner">
                <div class="container">
                  
                    <a class="brand" href="/">思君堂</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active">
                                	<a>农历七月二十九   [杨公忌日，大事勿用]</a>
                            </li>                            
                        <li>
                        </li>
                       </ul>
                        <div id="div_login" class="pull-right">
                            	<?php
									global $user;
								?>
								<?php if($user && $user->uid != 0): ?>
									<ul class="nav">
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
        
         <div class="container">
			  <div class="row">
				  <div class="span12 home_container0">
				  <?php
					  $path = drupal_get_path('theme', 'garland');
					?>
					<div class="row">
						<div class="span12 home_upperBlank"></div>
				  		<div class="span8 home_inner_container0 offset2" id="inner_word">
				  			<div class="row-fluid">
							  <div class="span2 offset1">
							  	<div class="row-fluid">
							  		<div class="span12 home_title_word0">
							  		</div>
							  		<div class="span12 home_title_word">
									  	<span style="font-family:KaiTi;font-size:60px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">思</span>
							  		</div>
							  		<div class="span12 home_title_word">
									  	<span style="font-family:KaiTi;font-size:60px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">君</span>
									</div>
							  		<div class="span12 home_title_word">
									  	<span style="font-family:KaiTi;font-size:60px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">堂</span>
							  		</div>
							  	</div>
							  </div>
							  <div class="span1"></div>
							  <div class="span7">
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;text-decoration:none;">&nbsp;</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;text-decoration:none;">&nbsp;</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">十年生死两茫茫，不思量，自难忘。</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">千里孤坟，无处话凄凉。</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">纵使相逢应不识，尘满面，鬓如霜。</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">夜来幽梦忽还乡，小轩窗，正梳妆。相顾无言，惟有泪千行。</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">料得年年肠断处，明月夜，短松冈。</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;text-decoration:none;">&nbsp;</span></p>
							  	<p style="text-align:right;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">《江城子·乙卯正月二十日夜记梦》 </span></p>
							  	<p style="text-align:right;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">--苏轼</span></p>
							  	<p style="text-align:left;"><span style="font-family:KaiTi;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;text-decoration:none;">&nbsp;</span></p>
							  </div>
							  <div class="span1"></div>
							</div>
				  		</div>
				  	</div>
					</div>
		  	</div>
<div class="navbar navbar-fixed-bottom">
 	<div class="navbar-inner">
                <div class="container">
                    <div class="nav-collapse collapse pull-right">
                        <ul class="nav">
                            <li class="active">
                                	<a>帮助</a>
                            </li>                            
                            <li class="active">
                                	<a>实例</a>
                            </li>                            
                            <li class="active">
                                	<a>在线客服</a>
                            </li>                            
                            <li class="active">
                                	<a>关于我们</a>
                            </li>                            
                        <li>
                        </li>
                       </ul>
                    </div>
                </div>
            </div>
</div>