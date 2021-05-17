<%@ page import="java.util.Map" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>轮播</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="../layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="../layuiadmin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-row">
		  <div class="layui-row layui-col-space15">
	  <div class="layui-col-md12">
	    <div class="layui-card">
	      <div class="layui-card-body">
	        <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
	          <ul class="layui-tab-title">
	            <li class="layui-this" lay-id="10">类别</li>




				  <%
					  Map mapSession = ActionContext.getContext().getSession();
					  Set<String> setType = (Set) mapSession.get("type");
					  for(String s: setType){
				  %>
<%--				  <a href="http://localhost:8080/JiYing_war_exploded/addresslist.jsp?select=<%=s%>"><%=s%></a>&nbsp;--%>
				  <li lay-id="11" lay-href="http://localhost:8080/JiYing_war_exploded/addresslist.jsp?select=<%=s%>"><%=s%></li>
				  <%
				  }
				  %>





<%--	            <li lay-id="11">爱情片</li>--%>
<%--	            <li lay-id="11" lay-href="">友情片</li>--%>
<%--	            <li lay-id="11">科幻</li>--%>








	          </ul>
				
				<ul class="layui-tab-title">
				  <li class="layui-this" lay-id="21">演员</li>



					<%
						Set<String> setActor = (Set) mapSession.get("actor");
						for(String s2: setActor){
					%>
<%--					<a href="http://localhost:8080/JiYing_war_exploded/Movie.jsp?select=<%=s2%>"><%=s2%></a>&nbsp;--%>
					<li lay-id="11" lay-href="http://localhost:8080/JiYing_war_exploded/addresslist.jsp?select=<%=s2%>"><%=s2%></li>
					<%
						}
					%>



<%--				  <li lay-id="22">宁浩</li>--%>
<%--				  <li lay-id="33">冯小刚</li>--%>
<%--				  <li lay-id="44">郭敬明</li>--%>
<%--				  <li lay-id="55">诺兰</li>--%>
<%--				  <li lay-id="77">更多</li>--%>





				</ul>
				
				
				<ul class="layui-tab-title">
				  <li class="layui-this" lay-id="32">上映时间</li>



					<%
						Set<Date> setDate = (Set) mapSession.get("date");
						for(Date s3: setDate){
					%>
					<li lay-id="11" lay-href="http://localhost:8080/JiYing_war_exploded/addresslist.jsp?select=<%=s3%>"><%=s3%></li>
<%--					<a href="http://localhost:8080/JiYing_war_exploded/Movie.jsp?select=<%=s3%>"><%=s3%></a>&nbsp;--%>
					<%
						}
					%>


<%--				  <li lay-id="22">2000</li>--%>
<%--				  <li lay-id="33">2020</li>--%>
<%--				  <li lay-id="44">1988</li>--%>
<%--				  <li lay-id="55">2001</li>	  --%>
<%--				<li lay-id="77">更多</li>--%>











				</ul>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
		</div>
	
	<div class="layui-fluid">
	  <div class="layui-row layui-col-space15">
	    
	    <div class="layui-col-sm6 layui-col-md3">
	      <div class="layui-card">
	        <div class="layui-card-header">
	          访问量
	          <span class="layui-badge layui-bg-blue layuiadmin-badge">周</span>
	        </div>
	        <div class="layui-card-body layuiadmin-card-list">
	          <p class="layuiadmin-big-font">9,999,666</p>
	          <p>
	            总计访问量 
	            <span class="layuiadmin-span-color">88万 <i class="layui-inline layui-icon layui-icon-flag"></i></span>
	          </p>
	        </div>
	      </div>
	    </div>
	    <div class="layui-col-sm6 layui-col-md3">
	      <div class="layui-card">
	        <div class="layui-card-header">
	          下载
	          <span class="layui-badge layui-bg-cyan layuiadmin-badge">月</span>
	        </div>
	        <div class="layui-card-body layuiadmin-card-list">
	          <p class="layuiadmin-big-font">33,555</p>
	          <p>
	            新下载 
	            <span class="layuiadmin-span-color">10% <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
	          </p>
	        </div>
	      </div>
	    </div>
	    <div class="layui-col-sm6 layui-col-md3">
	      <div class="layui-card">
	        <div class="layui-card-header">
	          收入
	          <span class="layui-badge layui-bg-green layuiadmin-badge">年</span>
	        </div>
	        <div class="layui-card-body layuiadmin-card-list">
	
	          <p class="layuiadmin-big-font">999,666</p>
	          <p>
	            总收入 
	            <span class="layuiadmin-span-color">*** <i class="layui-inline layui-icon layui-icon-dollar"></i></span>
	          </p>
	        </div>
	      </div>
	    </div>
	    <div class="layui-col-sm6 layui-col-md3">
	      <div class="layui-card">
	        <div class="layui-card-header">
	          活跃用户
	          <span class="layui-badge layui-bg-orange layuiadmin-badge">月</span>
	        </div>
	        <div class="layui-card-body layuiadmin-card-list">
	
	          <p class="layuiadmin-big-font">66,666</p>
	          <p>
	            最近一个月 
	            <span class="layuiadmin-span-color">15% <i class="layui-inline layui-icon layui-icon-user"></i></span>
	          </p>
	        </div>
	      </div>
	    </div>   
		
		
	    <div class="layui-col-sm12">
	      <div class="layui-card">
	        
	        <div class="layui-card-body">
	          <div class="layui-row">
	          
	                <div class="layui-col-md8">
	                     <div class="layui-card-body"   >       
	                        <div class="layui-carousel" id="test-carousel-img" >
	                          <div carousel-item="">
	                            <div><img src="./1.jpg" lay-href="https://movie.douban.com/subject/4864908/"></div>
	                            <div><img src="2.jpg" lay-href="https://movie.douban.com/subject/1418189/"></div>
	                            <div><img src="3.jpg" lay-href="https://movie.douban.com/subject/26266893/"></div>
	                            <div><img src="6.jpg" lay-href="https://movie.douban.com/subject/1291546/"></div>
	                            <div><img src="7.jpg" lay-href="https://movie.douban.com/subject/25907124/"></div>
	                            <div><img src="4.jpg" lay-href="https://movie.douban.com/subject/26366496/"></div>
	                            <div><img src="5.jpg" lay-href="https://movie.douban.com/subject/24773958/"></div>
	                          </div>
	                        </div>		
	                      </div>
	                	</div>
	         
	            <div class="layui-col-sm4">
	              <div class="layuiadmin-card-list">
	                <p class="layuiadmin-normal-font">月访问数</p>
	                <span>同上期增长</span>
	                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
	                  <div class="layui-progress-bar" lay-percent="30%"></div>
	                </div>
	              </div>
	              <div class="layuiadmin-card-list">
	                <p class="layuiadmin-normal-font">月下载数</p>
	                <span>同上期增长</span>
	                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
	                  <div class="layui-progress-bar" lay-percent="20%"></div>
	                </div>
	              </div>
	              <div class="layuiadmin-card-list">
	                <p class="layuiadmin-normal-font">月收入</p>
	                <span>同上期增长</span>
	                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
	                  <div class="layui-progress-bar" lay-percent="25%"></div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
		
		
	    <div class="layui-col-sm4">
	      <div class="layui-card">
	        <div class="layui-card-header">用户留言</div>
	        <div class="layui-card-body">
	          <ul class="layuiadmin-card-status layuiadmin-home2-usernote">
	            <li>
	              <h3>贤心</h3>
	              <p>作为 layui 官方推出的后台模板，从初版的饱受争议，到后续的埋头丰富，逐步占据了国内后台系统应用的主要市场。</p>
	              <span>5月30日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="7" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	            <li>
	              <h3>诸葛亮</h3>
	              <p>皓首匹夫！苍髯老贼！你枉活九十有六，一生未立寸功，只会摇唇鼓舌！助曹为虐！一条断脊之犬，还敢在我军阵前狺狺狂吠，我从未见过有如此厚颜无耻之人！</p>
	              <span>5月02日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="5" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	            <li>
	              <h3>胡歌</h3>
	              <p>你以为只要长得漂亮就有男生喜欢？你以为只要有了钱漂亮妹子就自己贴上来了？你以为学霸就能找到好工作？我告诉你吧，这些都是真的！</p>
	              <span>5月11日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="6" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	            <li>
	              <h3>杜甫</h3>
	              <p>人才虽高，不务学问，不能致圣。刘向十日画一水，五日画一石。</p>
	              <span>4月11日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="2" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	            <li>
	              <h3>鲁迅</h3>
	              <p>路本是无所谓有和无的，走的人多了，就没路了。。</p>
	              <span>4月28日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="4" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	            <li>
	              <h3>张爱玲</h3>
	              <p>于千万人之中遇到你所要遇到的人，于千万年之中，时间的无涯的荒野中，没有早一步，也没有晚一步，刚巧赶上了，那也没有别的话好说，唯有轻轻的问一声：“噢，原来你也在这里？”</p>
	              <span>4月11日 00:00</span>
	              <a href="javascript:;" layadmin-event="replyNote" data-id="1" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
	            </li>
	          </ul>
	        </div>
	      </div>
	    </div>
	    <div class="layui-col-sm8">
	      <div class="layui-row layui-col-space15">
	        <div class="layui-col-sm12">
	          <div class="layui-card">
	            <div class="layui-card-header">本周活跃用户列表</div>
	            <div class="layui-card-body">
	              <table class="layui-table layuiadmin-page-table" lay-skin="line">
	                <thead>
	                  <tr>
	                    <th>用户名</th>
	                    <th>最后登录时间</th>
	                    <th>状态</th>
	                    <th>获得赞</th>
	                  </tr> 
	                </thead>
	                <tbody>
	                  <tr>
	                    <td><span class="first">胡歌</span></td>
	                    <td><i class="layui-icon layui-icon-log"> 11:20</i></td>
	                    <td><span>在线</span></td>
	                    <td>22 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td><span class="second">彭于晏</span></td>
	                    <td><i class="layui-icon layui-icon-log"> 10:40</i></td>
	                    <td><span>在线</span></td>
	                    <td>21 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td><span class="third">靳东</span></td>
	                    <td><i class="layui-icon layui-icon-log"> 01:30</i></td>
	                    <td><i>离线</i></td>
	                    <td>66 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td>吴尊</td>
	                    <td><i class="layui-icon layui-icon-log"> 21:18</i></td>
	                    <td><i>离线</i></td>
	                    <td>45 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td>许上进</td>
	                    <td><i class="layui-icon layui-icon-log"> 09:30</i></td>
	                    <td><span>在线</span></td>
	                    <td>21 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td>小蚊子</td>
	                    <td><i class="layui-icon layui-icon-log"> 21:18</i></td>
	                    <td><i>在线</i></td>
	                    <td>45 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                  <tr>
	                    <td>贤心</td>
	                    <td><i class="layui-icon layui-icon-log"> 09:30</i></td>
	                    <td><span>在线</span></td>
	                    <td>21 <i class="layui-icon layui-icon-praise"></i></td>
	                  </tr>
	                </tbody>
	              </table>
	            </div>
	          </div>
	        </div>
	      
	        <div class="layui-col-sm12">
	          <div class="layui-card">
	            <div class="layui-card-header">用户全国分布</div>
	            <div class="layui-card-body">
	              <div class="layui-row layui-col-space15">
	                <div class="layui-col-sm4">
	                  <table class="layui-table layuiadmin-page-table" lay-skin="line">
	                    <thead>
	                      <tr>
	                        <th>排名</th>
	                        <th>地区</th>
	                        <th>人数</th>
	                      </tr> 
	                    </thead>
	                    <tbody>
	                      <tr>
	                        <td>1</td>
	                        <td>浙江</td>
	                        <td>62310</td>
	                      </tr>
	                      <tr>
	                        <td>2</td>
	                        <td>上海</td>
	                        <td>59190</td>
	                      </tr>
	                      <tr>
	                        <td>3</td>
	                        <td>广东</td>
	                        <td>55891</td>
	                      </tr>
	                      <tr>
	                        <td>4</td>
	                        <td>北京</td>
	                        <td>51919</td>
	                      </tr>  
	                      <tr>
	                        <td>5</td>
	                        <td>山东</td>
	                        <td>39231</td>
	                      </tr>
	                      <tr>
	                        <td>6</td>
	                        <td>湖北</td>
	                        <td>37109</td>
	                      </tr>
	                    </tbody>
	                  </table>
	                </div>
	               
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	      
	    </div>
	  </div>
	</div>
	
	<script src="../layuiadmin/layui/layui.js"></script>  
	<script>
	layui.config({
	  base: '../../layuiadmin/' //静态资源所在路径
	}).extend({
	  index: 'lib/index' //主入口模块
	}).use(['index', 'sample']);
	</script>
	
		
		
  <script src="../layuiadmin/layui/layui.js"></script>  
  <script>
  layui.config({
    base: '../layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'carousel', 'form'], function(){
    var carousel = layui.carousel
    ,form = layui.form;
  
    //常规轮播
    carousel.render({
      elem: '#test-carousel-normal'
      ,arrow: 'always'
    });
    
    //改变下时间间隔、动画类型、高度
    carousel.render({
      elem: '#test-carousel-normal-2'
      ,interval: 1000
      ,anim: 'fade'
      ,height: '120px'
    });
    
    //设定各种参数
    var ins3 = carousel.render({
      elem: '#test-carousel-demo'
    });
    //图片轮播
    carousel.render({
      elem: '#test-carousel-img'
      ,width: '778px'
      ,height: '440px'
      ,interval: 2000
    });
    
    //事件
    carousel.on('change(test-carousel-demo)', function(res){
      console.log(res)
    });
    
    var $ = layui.$, active = {
      set: function(othis){
        var THIS = 'layui-bg-normal'
        ,key = othis.data('key')
        ,options = {};
        
        othis.css('background-color', '#5FB878').siblings().removeAttr('style'); 
        options[key] = othis.data('value');
        ins3.reload(options);
      }
    };
    
    //监听开关
    form.on('switch(test-carousel-autoplay)', function(){
      ins3.reload({
        autoplay: this.checked
      });
    });
    
    $('.test-carousel-demoSet').on('keyup', function(){
      var value = this.value
      ,options = {};
      if(!/^\d+$/.test(value)) return;
      
      options[this.name] = value;
      ins3.reload(options);
    });
    
    //其它示例
    $('.test-carousel-demoTest .layui-btn').on('click', function(){
      var othis = $(this), type = othis.data('type');
      active[type] ? active[type].call(this, othis) : '';
    });
  
  });
  </script>
</body>
</html>