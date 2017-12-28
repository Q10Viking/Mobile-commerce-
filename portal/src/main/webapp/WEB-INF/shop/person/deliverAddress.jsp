<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="../taglibs.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="http://www.asiainfo-linkage.com/"/>
    <meta name="copyright" content="asiainfo-linkage.com 版权所有，未经授权禁止链接、复制或建立镜像。"/>
    <meta name="description" content="中国移动通信 name.com"/>
    <meta name="keywords" content="中国移动通信 name.com"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=yes, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10"/>
    <title>收货地址_用户中心_移动商城_中国移动通信</title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="search" type="application/opensearchdescription+xml" href="../opensearch.xml" title="移动购物"/>
    <link rel="stylesheet" href="../../res/css/style.css"/>
    <script src="${path }/res/js/jquery.js"></script>
    <script src="${path }/res/js/com.js"></script>
    <script type="text/javascript">var path = "${path}";</script>
    <script type="text/javascript" src="${path}/res/js/getUser.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#loginAlertIs").click(function () {
                tipShow('#loginAlert');
            });

            $("#promptAlertIs").click(function () {
                tipShow('#promptAlert');
            });

            $("#transitAlertIs").click(function () {
                tipShow('#transitAlert');
            });

        });

        function getAddr(shipAddrId) {
            $.ajax({
                url: "${path}/user/getAddr.do",
                data: {shipAddrId: shipAddrId},
                type: "post",
                success:function (responseText) {
                    alert(responseText);
                    var parseJSON = $.parseJSON(responseText);
                    $("#shipAddrId").val(parseJSON.addr.shipAddrId);
                    $("#shipName").val(parseJSON.addr.shipName);
                    $("#province").val(parseJSON.addr.province);
                    $("#mycity").val(parseJSON.addr.city);
                    $("#district").val(parseJSON.addr.district);
                    $("#addr").val(parseJSON.addr.addr);
                    $("#zipCode").val(parseJSON.addr.zipCode);
                    $("#phone").val(parseJSON.addr.phone);

                },
                error:function () {

                    alert("系统错误了");
                }
            });
        }


        function submitUpdateOrAdd(){

            //得到现在有多少个地址
            var length = $("#ListLength").val();

            if(length>5) {
                alert("你已经有5个地址了，不能再添加了。")
            }


        }




    </script>
</head>
<body>
<div id="tipAlert" class="w tips">
    <p class="l">本网站将于4月11日12:00进行系统维护，维护期间，本站将暂停业务办理等相关业务，敬请见谅。</p>
    <p class="r"><a href="javascript:void(0);" title="关闭" onclick="$('#tipAlert').hide();"></a></p>
</div>

<div class="bar">
    <div class="bar_w">
        <p class="l">
            <!-- 未登录 -->
            <b class="l">
                <a href="#" title="个人客户" class="here">个人客户</a>
                <a href="#" title="企业客户">企业客户</a>
            </b>
            <span class="l">
			欢迎来到中国移动！<a href="javascript:void(0);" title="登录" id="loginAlertIs"
                        class="orange"><samp>[</samp>请登录<samp>]</samp></a>&nbsp;<a href="passport/register.jsp"
                                                                                   title="免费注册">免费注册</a>
			<a href="javascript:void(0);" id="promptAlertIs" title="promptAlert">promptAlert</a>
			<a href="javascript:void(0);" id="transitAlertIs" title="transitAlert">transitAlert</a>
		</span>

        </p>
        <ul class="r uls">

            <li class="dev"><a href="#" title="在线客服">在线客服</a></li>
            <li class="dev"><a href="#" title="关于中国移动">关于中国移动</a></li>
            <li class="dev after"><a href="#" title="English">English</a></li>

            </li>
        </ul>
    </div>
</div>

<div class="w header">
    <h1><a href="http://www.bj.10086.cn" title="中国移动通信">中国移动通信</a></h1>
    <div class="area">
        <dl id="city">
            <dt><a href="javascript:void(0);" title="贵州">贵州<samp class="inb"></samp></a></dt>
            <dd class="bx hidden">
                <div class="tl"></div>
                <div class="tr"></div>
                <ul class="ul">
                    <li><a href="http://www.bj.10086.cn" title="北京">北京</a></li>
                    <li><a href="http://www.gd.10086.cn" title="广东">广东</a></li>
                    <li><a href="http://www.sh.10086.cn" title="上海">上海</a></li>
                    <li><a href="http://www.tj.10086.cn" title="天津">天津</a></li>
                    <li><a href="http://www.cq.10086.cn" title="重庆">重庆</a></li>
                    <li><a href="http://www.ln.10086.cn" title="辽宁">辽宁</a></li>
                    <li><a href="http://www.js.10086.cn" title="江苏">江苏</a></li>
                    <li><a href="http://www.he.10086.cn" title="河北">河北</a></li>
                    <li><a href="http://www.sc.10086.cn" title="四川">四川</a></li>
                    <li><a href="http://www.sn.10086.cn" title="陕西">陕西</a></li>
                    <li><a href="http://www.sx.10086.cn" title="山西">山西</a></li>
                    <li><a href="http://www.ha.10086.cn" title="河南">河南</a></li>
                    <li><a href="http://www.jl.10086.cn" title="吉林">吉林</a></li>
                    <li><a href="http://www.sd.10086.cn" title="山东">山东</a></li>
                    <li><a href="http://www.ah.10086.cn" title="安徽">安徽</a></li>
                    <li><a href="http://www.hn.10086.cn" title="湖南">湖南</a></li>
                    <li><a href="http://www.gx.10086.cn" title="广西">广西</a></li>
                    <li><a href="http://www.jx.10086.cn" title="江西">江西</a></li>
                    <li><a href="http://www.gz.10086.cn" title="贵州">贵州</a></li>
                    <li><a href="http://www.yn.10086.cn" title="云南">云南</a></li>
                    <li><a href="http://www.xz.10086.cn" title="西藏">西藏</a></li>
                    <li><a href="http://www.gs.10086.cn" title="甘肃">甘肃</a></li>
                    <li><a href="http://www.zj.10086.cn" title="浙江">浙江</a></li>
                    <li><a href="http://www.fj.10086.cn" title="福建">福建</a></li>
                    <li><a href="http://www.hi.10086.cn" title="海南">海南</a></li>
                    <li><a href="http://www.hb.10086.cn" title="湖北">湖北</a></li>
                    <li><a href="http://www.nx.10086.cn" title="宁夏">宁夏</a></li>
                    <li><a href="http://www.qh.10086.cn" title="青海">青海</a></li>
                    <li><a href="http://www.xj.10086.cn" title="新疆">新疆</a></li>
                    <li><a href="http://www.hl.10086.cn" title="黑龙江">黑龙江</a></li>
                    <li class="col6"><a href="http://www.nm.10086.cn" title="内蒙古">内蒙古</a></li>
                    <li class="col3"><a href="http://www.chinamobileltd.com" title="China Mobile Ltd">China Mobile
                        Ltd</a></li>
                    <li class="col3"><a href="http://labs.10086.cn" title="中国移动研究院">中国移动研究院</a></li>
                    <li class="col3"><a href="http://www.cmdi.10086.cn" title="中国移动设计院">中国移动设计院</a></li>
                </ul>
                <div class="fl"></div>
                <div class="fr"></div>
            </dd>
        </dl>
    </div>
    <p title="移动改变生活"><span>移动</span>改变生活<samp>&gt;&gt;</samp></p>
</div>

<div class="w nav">
    <ul class="uls">
        <li><a href="#" title="服务与支持" class="a"><b>服务与支持</b></a></li>
        <li id="shop" class="here"><a href="#" title="网上营业厅" class="a"><b>网上营业厅</b></a>
            <div class="col4 hidden">
                <dl class="col">
                    <dt title="手机商城">手机商城</dt>
                    <dd><a href="#" title="诺基亚">诺基亚</a></dd>
                    <dd><a href="#" title="华为">华为</a></dd>
                    <dd><a href="#" title="三星">三星</a></dd>
                    <dd><a href="#" title="最新优惠">中兴</a></dd>
                </dl>
                <dl class="col2">
                    <dt title="网上选号">网上选号</dt>
                    <dd><a href="#" title="全球通">全球通</a></dd>
                    <dd><a href="#" title="动感地带">动感地带</a></dd>
                    <dd><a href="#" title="神州行">神州行</a></dd>
                </dl>
                <dl class="col3">
                    <dt title="优惠活动">优惠活动</dt>
                    <dd><a href="#" title="购机返话费">购机返话费</a></dd>
                    <dd><a href="#" title="优惠购机">优惠购机</a></dd>
                </dl>
                <span></span>
            </div>
        </li>
        <li id="my"><a href="#" title="我的移动" class="a"><b>我的移动</b></a>
            <div class="col2 hidden">
                <dl class="col">
                    <dt title="我的账户">我的账户</dt>
                    <dd><a href="#" title="套餐余量查询">套餐余量查询</a></dd>
                    <dd><a href="#" title="积分查询">积分查询</a></dd>
                    <dd><a href="#" title="业务状态查询">业务状态查询</a></dd>
                    <dd><a href="#" title="充值缴费" class="red">充值缴费</a></dd>
                    <dd><a href="#" title="详单查询">详单查询</a></dd>
                    <dd><a href="#" title="余额查询">余额查询</a></dd>
                    <dd><a href="#" title="账单查询">账单查询</a></dd>
                </dl>
                <dl class="col2">
                    <dt title="我要办理">我要办理</dt>
                    <dd><a href="#" title="快速查找">快速查找</a></dd>
                    <dd><a href="#" title="产品推荐">产品推荐</a></dd>
                    <dd><a href="#" title="生活配对">生活配对</a></dd>
                    <dd><a href="#" title="最新优惠">最新优惠</a></dd>
                </dl>
                <dl class="col3">
                    <dt title="移动生活">移动生活</dt>
                    <dd><a href="#" title="手机阅读">手机阅读</a></dd>
                    <dd><a href="#" title="无线音乐俱乐部">无线音乐俱乐部</a></dd>
                    <dd><a href="#" title="手机游戏">手机游戏</a></dd>
                </dl>
                <span></span>
            </div>
        </li>
        <li><a href="#" title="首页" class="a"><b>首页</b></a></li>
    </ul>
</div>

<div class="w sch">
    <div class="l">
        <dl class="goto">
            <dt title="快捷办理通道">快捷办理通道<i class="inb"></i></dt>
            <dd class="hidden">
                <a href="#" target="_blank" title="移动数据流量详单">移动数据流量详单</a>
                <a href="#" target="_blank" title="家庭亲情网">家庭亲情网</a>
                <a href="#" target="_blank" title="虚拟网业务">虚拟网业务</a>
                <a href="#" target="_blank" title="全球通商旅套餐">全球通商旅套餐</a>
                <a href="#" target="_blank" title="短信业务">短信业务</a>
                <a href="#" target="_blank" title="彩铃业务">彩铃业务</a>
                <a href="#" target="_blank" title="WLAN业务(含校园版)">WLAN业务(含校园版)</a>
                <a href="#" target="_blank" title="G3可视电话">G3可视电话</a>
                <a href="#" target="_blank" title="全球通上网套餐">全球通上网套餐</a>
                <a href="#" target="_blank" title="飞信业务">飞信业务</a>
            </dd>
        </dl>
        <p><a href="#" title="购机选号">购机选号</a><samp>|</samp><a href="#" title="网上交费">网上交费</a><samp>|</samp><a href="#"
                                                                                                            title="积分商城">积分商城</a><samp>|</samp><a
                href="http://www.gz.10086.cn/zf/" target="_blank">资费专区</a></p>
    </div>

    <form method="post" action="" name="" class="r">
        热门搜索：<a href="#" title="GPRS">GPRS</a><samp>|</samp><a href="#" title="全球通新88套餐">全球通新88套餐</a>
        <select name="screahType" id="screahType">
            <option>商城</option>
            <option>号卡</option>
            <option>门户</option>
        </select><input type="text" class="txt_sch gray" id="screahWord" name="screahWord"
                        onfocus="if(this.value=='请输入商品名称关键字'){this.value='';this.className='txt_sch'}"
                        onblur="if(this.value==''){this.value='请输入商品名称关键字';this.className='txt_sch gray'}"
                        value="请输入商品名称关键字"/><input type="submit" value="搜索" class="hand btn60x26"/></form>
</div>

<div class="w loc">

    <p class="l"><a href="#" title="商城首页">商城首页</a><samp>|</samp><a href="#" title="我的商城">我的商城</a></p>

    <dl id="cart" class="cart l">
        <dt><a href="#" title="结算">结算</a>购物车:<b id="">123</b>件</dt>
        <dd class="hidden">
            <p class="alg_c hidden">购物车中还没有商品，赶紧选购吧！</p>
            <h3 title="最新加入的商品">最新加入的商品</h3>
            <ul class="uls">
                <li>
                    <a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"><img
                            src="../../res/img/pic/p50x50.jpg"
                            alt="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"/></a>
                    <p class="dt"><a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L">倍力通(Prestone)超级全合成机油5W-40
                        SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L</a></p>
                    <p class="dd">
                        <b><var>¥3599</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"><img
                            src="../../res/img/pic/p50x50b.jpg"
                            alt="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"/></a>
                    <p class="dt"><a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L">倍力通(Prestone)超级全合成机油5W-40
                        SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L</a></p>
                    <p class="dd">
                        <b><var>¥3599</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"><img
                            src="../../res/img/pic/p50x50c.jpg"
                            alt="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"/></a>
                    <p class="dt"><a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L">倍力通(Prestone)超级全合成机油5W-40
                        SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L</a></p>
                    <p class="dd">
                        <b><var>¥3599</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"><img
                            src="../../res/img/pic/p50x50.jpg"
                            alt="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L"/></a>
                    <p class="dt"><a href="#" title="倍力通(Prestone)超级全合成机油5W-40 SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L">倍力通(Prestone)超级全合成机油5W-40
                        SM级 4L倍力通(Prestone)超级全合成机油5W-40 SM级 4L</a></p>
                    <p class="dd">
                        <b><var>¥3599</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
            </ul>
            <div>
                <p>共<b>4</b>件商品&nbsp;&nbsp;&nbsp;&nbsp;共计<b class="f20">¥3599.00</b></p>
                <a href="#" title="去购物车结算" class="inb btn120x30c">去购物车结算</a>
            </div>
        </dd>
    </dl>

    <p class="r"><a href="index.jsp" title="首页">首页</a><samp>&gt;</samp><a href="index.jsp" title="用户中心">用户中心</a><samp>
        &gt;</samp><span class="gray">收货地址</span></p>

</div>

<div class="w mt ofc">
    <div class="l wl">

        <h2 class="h2 h2_l"><em title="交易管理">交易管理</em><cite>&nbsp;</cite></h2>
        <div class="box bg_gray">
            <ul class="ul left_nav">
                <li><a href="myOrders.jsp" title="我的订单">我的订单</a></li>
                <li><a href="returnOrders.jsp" title="退换货订单">退换货订单</a></li>
                <li><a href="myFavorites.jsp" title="我的收藏">我的收藏</a></li>
            </ul>
        </div>

        <h2 class="h2 h2_l mt"><em title="账户管理">账户管理</em><cite>&nbsp;</cite></h2>
        <div class="box bg_gray">
            <ul class="ul left_nav">
                <li><a href="profile.jsp" title="个人资料">个人资料</a></li>
                <li><a href="${path}/user/login/toDeliverAddress.do

" title="收货地址" class="here">收货地址</a></li>
                <li><a href="changePassword.jsp" title="修改密码">修改密码</a></li>
            </ul>
        </div>

    </div>
    <div class="r wr profile">

        <div class="confirm">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="ofc">

                <h2 class="h2 h2_r2"><em title="个人资料">收货地址</em></h2>

                <h3 class="h3_r">已存收货地址列表<span>最多保存5个收货地址</span></h3>

                <table cellspacing="0" summary="" class="tab tab6">
                    <thead>
                    <tr>
                        <th>收货人</th>
                        <th>所在地区</th>
                        <th>街道地址</th>
                        <th>邮编</th>
                        <th>电话/手机</th>
                        <th>&nbsp;</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="addrCss">


                    <c:forEach items="${userAddress}" var="address">
                        <tr <c:if test="${address.defaultAddr == 1 }">class='here'</c:if>>
                            <td>${address.shipName}</td>
                            <td>${address.province} ${address.city} ${address.district}</td>
                            <td>${address.addr} </td>
                            <td>${address.zipCode}</td>
                            <td>${address.phone}</td>
                            <td class="def blue"><a href="${path}/user/updateDefault.do?shipAddrId=${address.shipAddrId}">设为默认</a></td>
                            <td><a href="javascript:void(0);" title="修改" onclick="getAddr(${address.shipAddrId})"
                                   class="blue">[修改]</a><a
                                    href="javascript:void(0);" title="删除" onclick="del(${address.shipAddrId})"
                                    class="blue">[删除]</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <h3 class="h3_r">新增/修改收货地址<span>手机、固定电话选填一项，其余均为必填</span></h3>

                <form id="jvForm" action="${path}/user/saveOrUpdateAddress.do" method="post">

                    <input type="hidden" id="ListLength" value="${fn:length(userAddress)}">


                    <input type="hidden"  id="shipAddrId" name="shipAddrId">
                    <ul class="uls form">
                        <li id="errorName" class="errorTip" style="display:none">${error}</li>
                        <li>
                            <label for="username"><samp>*</samp>收货人姓名：</label>
                            <span class="bg_text"><input type="text" id="shipName" name="shipName" vld="{required:true}"
                                                         maxLength="100"/></span>
                            <span class="pos"><span class="tip okTip">&nbsp;</span></span>
                        </li>
                        <li>
                            <label for="residence"><samp>*</samp>地　　址：</label>
                            <span class="word">
							<select id="province" name="province">
							<option value="" selected>省/直辖市</option>
							<option value="吉林">吉林省</option>
							<option value="广西">广西省</option>
						</select>
						<select id="mycity" name="city">
							<option value="" selected>城市</option>
							<option value="长春">长春</option>
							<option value="南宁">南宁</option>
						</select><select id="district" name="district">
							<option value="" selected>县/区</option>
							<option value="朝阳">朝阳</option>
							<option value="清秀">清秀</option>
						</select></span>
                        </li>
                        <li>
                            <label for="nick"><samp>*</samp>街道地址：</label>
                            <span class="bg_text"><input type="text" id="addr" name="addr" maxLength="32"
                                                         vld="{required:true}"/></span>
                            <span class="pos"><span class="tip errorTip">用户名为4-20位字母、数字或中文组成，字母区分大小写。</span></span>
                        </li>
                        <li>
                            <label for="zipCode"><samp>*</samp>邮政编码：</label>
                            <span class="bg_text"><input type="text" id="zipCode" name="zipCode" maxLength="32"
                                                         vld="{required:true}"/></span>
                        </li>
                        <li>
                            <label for="telphone"><samp>*</samp>联系电话：</label>
                            <span class="bg_text"><input type="text" id="phone" name="phone" maxLength="32"
                                                         vld="{required:true}"/></span>
                            <span class="pos"><span class="tip warningTip">用户名为4-20位字母、数字或中文组成，字母区分大小写。</span></span>
                        </li>
                        <li>
                            <label for="statusAddr">&nbsp;</label>
                            <span><input type="checkbox" name="defaultAddr" id="defaultAddr" value="1"/>设为默认收货地址</span>
                        </li>
                        <li><label for="">&nbsp;</label><input type="button" value="保存" onclick="submitUpdateOrAdd()" class="hand btn66x23"/></li>
                    </ul>
                </form>

            </div>
            <div class="fl"></div>
            <div class="fr"></div>
        </div>

    </div>
</div>

<div class="mode">
    <div class="tl"></div>
    <div class="tr"></div>
    <ul class="uls">
        <li class="first">
            <span class="guide"></span>
            <dl>
                <dt title="购物指南">购物指南</dt>
                <dd><a href="#" title="在线购机/预约购机流程">在线购机/预约购机流程</a></dd>
                <dd><a href="#" target="_blank" title="预约选号流程">预约选号流程</a></dd>
            </dl>
        </li>
        <li>
            <span class="way"></span>
            <dl>
                <dt title="支付方式">支付方式</dt>
                <dd><a href="#" title="在线支付">在线支付</a></dd>
                <dd><a href="#" title="退款周期">退款周期</a></dd>
            </dl>
        </li>
        <li>
            <span class="help"></span>
            <dl>
                <dt title="配送方式">配送方式</dt>
                <dd><a href="#" title="配送说明">配送说明</a></dd>
                <dd><a href="#" title="配送时间">配送时间</a></dd>
                <dd><a href="#" title="配送费用">配送费用</a></dd>
                <dd><a href="#" title="货品签收">货品签收</a></dd>
            </dl>
        </li>
        <li>
            <span class="service"></span>
            <dl>
                <dt title="售后服务">售后服务</dt>
                <dd><a href="#" target="_blank" title="退换货流程">退换货流程</a></dd>
                <dd><a href="#" target="_blank" title="售后服务点">售后服务点</a></dd>
            </dl>
        </li>
        <li>
            <span class="problem"></span>
            <dl>
                <dt title="常见问题">常见问题</dt>
                <dd><a href="#" target="_blank" title="配送时限是几天？">配送时限是几天？</a></dd>
                <dd><a href="#" target="_blank" title="付款方式有哪些？">付款方式有哪些？</a></dd>
                <dd><a href="#" target="_blank" title="如何签收商品？">如何签收商品？</a></dd>
                <dd><a href="#" target="_blank" title="是否提供三包售后？">是否提供三包售后？</a></dd>
            </dl>
        </li>
    </ul>
</div>

<div class="w footer">
    <p><a href="#" title="新闻公告">新闻公告</a><samp>|</samp><a href="#" title="法律声明">法律声明</a><samp>|</samp><a href="#"
                                                                                                        title="诚招英才">诚招英才</a><samp>|</samp><a
            href="#" title="联系我们">联系我们</a><samp>|</samp><a href="#" title="采购信息">采购信息</a><samp>|</samp><a href="#"
                                                                                                          title="企业合作">企业合作</a><samp>|</samp><a
            href="#" title="站点导航">站点导航</a><samp>|</samp><a href="#" title="网站地图">网站地图</a></p>
    <p>掌上营业厅：<a href="#" title="掌上营业厅：wap.10086.cn">wap.10086.cn</a>&nbsp;&nbsp;语音自助服务：10086&nbsp;&nbsp;短信营业厅：10086&nbsp;&nbsp;<a
            href="http://www.bj.10086.cn/index/10086/channel/index.shtml">自助终端网点查询</a>&nbsp;&nbsp;<a
            href="http://www.bj.10086.cn/index/10086/channel/index.shtml">满意100营业厅网点查询</a>&nbsp;&nbsp;<a
            href="http://www.bj.10086.cn/index/10086/download/index.shtml">手机客户端下载</a></p>
    <p><a href="#" title="京ICP备05002571" class="inb i18x22"></a>&nbsp;京ICP备05002571<samp>|</samp>中国移动通信集团&nbsp;版权所有</p>
</div>

<div id="loginAlert" class="alt login" style="display:none">
    <h2 class="h2"><em title="登录">登录</em><cite></cite></h2>
    <a href="javascript:void(0);" id="loginAlertClose" class="close" title="关闭"></a>
    <div class="cont">
        <ul class="uls form">
            <li id="loginAlertError" class="errorTip" style="display:none"></li>
            <li>
                <label>帐号类型：</label>
                <dl class="bg_text" style="z-index:3">
                    <dd class="hidden">
                        <a href="javascript:void(0);" title="手机号码">手机号码</a>
                        <a href="javascript:void(0);" title="用户名">用户名</a>
                    </dd>
                    <dt title="请选择帐号类型">请选择帐号类型</dt>
                </dl>
            </li>
            <li>
                <label>手机号码：</label>
                <span class="bg_text">
				<input type="text" maxlength="50" vld="{required:true}" name="loginUserName" id="loginUserName"
                       reg1="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$"
                       desc="用户名长度不超过50个，必须是邮箱格式！"/>
				<em id="userNameLabel" class="def">请输入手机号码</em>
			</span>
                <span class="word"><a title="免费注册" href="/ecps-portal/ecps/portal/register.do">免费注册</a></span>
            </li>
            <li>
                <label>登录模式：</label>
                <dl class="bg_text" style="z-index:2">
                    <dd class="hidden">
                        <a href="javascript:void(0);" title="服务密码">服务密码</a>
                        <a href="javascript:void(0);" title="网站密码">网站密码</a>
                    </dd>
                    <dt title="请选择帐号类型">请选择登录模式</dt>
                </dl>
            </li>
            <li><label>服务密码：</label>
                <span class="bg_text"><input type="password" vld="{required:true}" maxlength="20" name="loginPassword"
                                             id="loginPassword" value="" reg1="^.{6,20}$"
                                             desc="密码长度范围为6-20，允许为中英文、数字或特殊字符！"/></span>
            </li>
            <li>
                <label for="captcha">验 证 码：</label>
                <span class="bg_text small"><input type="text" vld="{required:true}" maxlength="7" name="loginCaptcha"
                                                   id="loginCaptcha" value="" reg1="^\w{6}$" desc="验证码不正确"/></span>
                <img alt="换一张" id="loginCaptchaCode" class="code"
                     onclick="this.src='/ecps-portal/captcha.svl?d='+new Date().getTime();"
                     src="../../res/img/pic/code.png"/><a href="#"
                                                          onclick="document.getElementById('loginCaptchaCode').src='/ecps-portal/captcha.svl?d='+new Date().getTime();"
                                                          title="换一张">换一张</a>
            </li>
            <li class="gray"><label>&nbsp;</label><input type="checkbox" name="">记住我的手机号码</li>
            <li><label>&nbsp;</label><input type="button" id="loginSubmit" class="hand btn66x23" value="登 录"
                                            onclick="loginAjax('/ecps-portal/ecps/portal/item/landingAjax.do');"><a
                    title="忘记密码？" href="/ecps-portal/ecps/portal/getpwd/getpwd1.do">忘记密码？</a></li>
            <!--li class="alg_c dev gray">还不是移动商城会员？<a title="免费注册" href="/ecps-portal/ecps/portal/register.do">免费注册</a></li-->
        </ul>
    </div>
</div>

<div id="promptAlert" class="alt prompt" style="display:none">
    <h2 class="h2"><em title="提示">提示</em><cite></cite></h2>
    <a href="javascript:void(0);" id="promptAlertClose" class="close" title="关闭"></a>
    <div class="cont">
        <dl class="dl_msg">
            <dt>请在新页面完成支付！</dt>
            <dd>支付完成前请不要关闭此窗口，<br/>完成支付后请根据您的情况点击下面的按钮。</dd>
            <dd><a href="#" title="遇到付款问题" class="inb btn96x23 mr20">遇到付款问题</a><a href="#" title="已完成支付"
                                                                                  class="inb btn96x23">已完成支付</a></dd>
            <dd class="alg_r"><a href="#" title="返回选择其他支付方式">返回选择其他支付方式&gt;&gt;</a></dd>
        </dl>
    </div>
</div>

<div id="transitAlert" class="alt transit" style="display:none">
    <h2 class="h2"><em title="提示">提示</em><cite></cite></h2>
    <a href="javascript:void(0);" id="transitAlertClose" class="close" title="关闭"></a>
    <div class="cont">
        <div class="warningMsg">
            <p class="indent">
                您即将访问的网站不属于中国移动通信集团公司门户网站站群范围，任何通过使用中国移动通信集团公司门户网站站群链接到的第三方页面均系第三方平台制作或提供，您可能从该第三方网页上获得资讯及享用服务，中国移动通信集团公司对其合法性概不负责，也不承担任何法律责任。</p>
            <p class="alg_c"><input type="button" class="hand btn66x23" value="确 定"/></p>
        </div>
    </div>
</div>

</body>
</html>