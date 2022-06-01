<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <style type="text/css">

    </style>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />

</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<!-- blog -->
<div class="form-box" id="form-box" style="display: none">
    <div class="save-form-box" style="display: none">
        <div class="shutdown">×</div>
        <div class="save-title">
            救助信息填写
        </div>
        <div class="rows">
            <div class="row-name">您的姓名:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="rescuerName" placeholder="请输入您的姓名">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">电话号码:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="rescuerTele" placeholder="请输入您的手机号">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">求助地点:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="referAddress" placeholder="请输入需要求助的地点">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">动物种类:</div>
            <div class="row-input">
                <input type="radio" name="ani-class" class="ani-class"> 狗 <input type="radio" name="ani-class" class="ani-class"> 猫
            </div>
        </div>
        <div class="rows">
            <div class="row-name">动物描述:</div>
            <div class="row-input">
                <div class="flex_textarea js_textarea input-area" contenteditable="true" onpaste="return pasteListener(event, true)"
                     id="animalDescribe" placeholder="请大概描述一下动物状态"></div>
<%--                <textarea cols="30" rows="5" class="input-area" name="animalDescribe" placeholder="请大概描述一下动物的状态"></textarea>--%>
            </div>
        </div>
        <div class="rows">
            <div class="row-name" style="margin-bottom: 62px">图片描述:</div>
            <div class="row-input" id="pic-input">
                <div id="mask-file">
                    <div id="mask-flag">+</div>
                    <p>添加图片</p>
                </div>
                <input id="file" class="filepath" onchange="changepic(this)" type="file">
                <div id="more" style="display: inline-block; width: 100px;height: 120px;"></div>
            </div>
        </div>
        <div id="submit-save-msg">
            提交信息
        </div>
    </div>
</div>

<div class="background">
    <div class="pet-box">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>救助须知</strong>
            </div>
        </div>

        <div class="need-know" style="padding-bottom: 27px">
            <p class="point">第一救助人原则</p>
            <p>经常接到一些求助电话，在某地发现流浪猫狗，请前去救助……面对这种情况，有必要对所有关注流浪动物的朋友进行说明，重庆小动物保护协会，是纯粹的民间救助团队，提供一个救助平台，所有资金来源均是爱心人士捐助。且救助不是某个人的事情，需要社会力量的支持与参与。我们只是一群爱动物的义工，我们没有义务为你所谓的“爱心”来买单。</p>
            <p>小动物保护协会救助对象为：被人为恶意遗弃、抛弃、虐杀，伤害的小动物。</p>
            <p>第一救助人：通俗来讲，即发现流浪动物并参与他整个救助过程的人。整个救助过程包括救助、安顿和领养三个过程。有人用“监护人”来概括第一救助人。</p>
            <p>很多人以为自己看见流浪猫狗了，然后给协会一个电话打过去，或者一个qq消息一个微博@过去就算是救助了，其实不然！真正的救助，其过程包括：发现--安顿--领养！（安顿过程中，有病、受伤的需要治疗。如果自己能力不够，可以发动网络及社会帮助）。只有完成以上过程，才能算是一个完整的救助！而很多第一发现人只做到了发现，但是除了发现外还可以送被发现的动物去医院等等。如果你发现一个需要救助的动物，只是发现了，并没有做其他相关的救助，那么，你不算是真正就救了它。</p>
            <p>如果你是一个爱小动物的人，请完成所有的救助过程，真正救助它们。其间我们小动物协会愿意提供各个方面的平台，最终达到小动物被完全救助的目的。</p>
            <p>我是否可以圣任第一救助人？</p>
            <p>如果您确实具有爱心和责任心，并且真心的希望救助您发现的流浪动物，那么，您就可以完全可以胜任第一救助人。</p>
            <p>你在救助过程中大部分我们是可以协助完成的，包括联系医院，募捐治疗费，后续寻找审核领养人等等。我们有庞大的义工团队，以及丰富的救助经验，相信我们，可以让您的救助工作变得简单轻松。</p>
            <p class="point">第一：发现（发现时尽量做到以下几点）</p>
            <p>1、远距离观察：观察被救助的流浪动物是否有行动能力；观察被救助的流浪动物是否受伤；观察被救助的流浪动物鼻头是否湿润；观察狗狗的情绪等。</p>
            <p>2、尝试接触：通过远距离观察后，如觉得狗狗可以亲近，可以尝试性接触。此过程需要巨大的耐心，有一定的危险性，要注意自身安全，做好防护措施，比如戴厚手套。</p>
            <p>3、尝试性接触狗狗后，如果狗狗接受你了，就可以找东西把狗带走。有条件的可以临时找个狗笼。</p>
            <p class="point">第二：安顿</p>
            <p>1、如果被救助的流浪动物没有生病，就可以临时安顿在自己家里，或者宠物店寄养的地方。</p>
            <p>2、如果被救助的流浪动物生病了，赶紧送医院检查、治疗。当然如果第一救助人能够自主处理好救助--治疗---领养的过程，则更好！</p>
            <p>3、如果第一救助人不能完成以上事项，再到协会的qq群，或者论坛进行求助，大家互相帮忙一起完成救助、领养的过程.</p>
            <p>4、在以上都没有更好的处理情况下，向协会求助才是作为最后的渠道！（协会目前，只对处于紧急状态的流浪动物，在协会本身有救助资源，包括人手，资金的情况下，对第一救助人尽心协助救助。）</p>
            <p class="point">第三：领养</p>
            <p>把所有的问题解决好了，最后当然是帮它找一个温暖的家。第一救助人可以发动自己身边所有的资源来帮它找一个温暖的家。如果实在是找不到了，小动物协会愿意帮助第一救助人寻找。</p>
        </div>

        <div class="save-button" style="padding-bottom: 45px">
            <span>我要救助</span>
        </div>

    </div>
</div>

<!-- //Modal5 -->
<!-- //blog -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
<script type="text/javascript">
    var totalRecord,currentPage;
    $(".nav-links li").eq(3).find("a").css("color", "#f15b29")

    $(".row-input").on("mouseover", "img", function () {
        $(this).siblings(".del-img").css({display: "block"})
    }).on("mouseout", "img", function () {
        $(this).siblings(".del-img").css({display: "none"})
    }).on("click", ".del-img", function () {
        if ($(this).parent(".save-img").siblings(".save-img").length !== 0) {
            $(this).parent(".save-img").siblings(".save-img").eq(0).find("img").css({marginLeft: "120px"})
        } else {
            $("#more").css({display: "inline-block"})
        }
        $(this).parent(".save-img").remove()
    }).on("mouseover", ".del-img", function () {
        $(this).css({display: "block"})
    })


    var i=0;
    function changepic(obj) {

        //首先插入一个图片标签，src属性为空，宽高设置为100px，暂时设为不可见
        if (i === 0) {
            var add = $()
            document.getElementById("pic-input").innerHTML+="<div class=\"save-img\"><img src=\"\" id=\"show"+i+"\" style=\"opacity: 0;margin-left: 120px;\"><div class=\"del-img\" style=\"display: none\">×</div></div>";
        } else {
            document.getElementById("pic-input").innerHTML+="<div class=\"save-img\"><img src=\"\" id=\"show"+i+"\" style=\"opacity: 0;\"><div class=\"del-img\"  style=\"display: none\">×</div></div>";
        }
        //调用getObjectURL函数，返回上传的图片的地址
        var newsrc=getObjectURL(obj.files[0]);
        document.getElementById('show'+i).src=newsrc;//将图片的路径设置为返回上传的图片的地址
        document.getElementById("show"+i).style.opacity=1;//将图片设置为可见
        $("#more").css({display: "none"})
        i++;
    }
    //建立一个可存取到该file的url
    function getObjectURL(file) {
        var url = null ;
        // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url ;
    }

    var doc = document.documentElement;
    relHeight = (doc.clientHeight > doc.scrollHeight) ? doc.clientHeight : doc.scrollHeight;//获取屏幕高度和当前页面高度中的较大值
    document.getElementById('form-box').style.height = relHeight+'px';//id为bg的div就是我页面中的遮罩层

    $(".row-input .input-area").mouseover(function () {
        $(this).css({
            fontSize: "15px",
            fontWeight: "bold",
            transition: "all .5s ease"
        })
    }).mouseout(function () {
        if (!$(this).is(":focus")) {
            $(this).css({
                fontSize: "13px",
                fontWeight: "normal",
                transition: "all .5s ease"
            })
        }
    }).focus(function () {
        $(this).css({
            fontSize: "15px!important",
            fontWeight: "bold!important",
            transition: "all .5s ease",
            border: "2px solid #f15b29"
        })
    }).blur(function () {
        $(this).css({
            fontSize: "13px",
            fontWeight: "normal",
            border: "2px solid transparent"
        })
    })

    $(".save-button span").click(function () {
        $("#form-box").css({display: "block"})
        $(".nav-links .navbar-default").css({backgroundColor: "#cfcfcf"})
        $(".save-form-box").fadeIn(300)
    })

    $(".shutdown").click(function () {
        $(".save-form-box").fadeOut(300, function () {
            $("#form-box").css({display: "none"})
            $(".nav-links .navbar-default").css({backgroundColor: "white"})
        })
    })

    function pasteListener(event, isLimit) {
        $.each(event.clipboardData.items, function(index, item) {
            if(item.kind == "file" && item.type.match("image/*")) {
                var file = item.getAsFile();
                if(isLimit && file.size > 2 * 1024 * 1024) {
                    parent.index.layers("msg", "粘贴的图片内容过大，最大支持为2M。");
                    return true;
                }
                var fileReader = new FileReader();
                fileReader.onload = function(event) {
                    var img = "<img src='" + event.target.result + "' style='" + (isLimit ? "width:200px;" : "") + "'" + (isLimit ? "" : "") + ">";
                    var selection = window.getSelection();
                    var range = selection.getRangeAt(0);
                    range.insertNode($(img)[0]);
                    selection.anchorOffset = selection.focusOffset;
                    selection.collapseToEnd();
                }
                fileReader.readAsDataURL(file);
            } else if(item.kind == "string" && item.type.match("text/plain")) {
                item.getAsString(function(str) {
                    var selection = window.getSelection();
                    var range = selection.getRangeAt(0);
                    range.insertNode(new Text(str));
                    selection.anchorOffset = selection.focusOffset;
                    selection.collapseToEnd();
                });
            }
        });
        return false;
    }


    $(function(){
        to_page(1);
    });
    function to_page(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/blog/blogs.action",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //1、解析并显示员工数据
                build_blogs_table(result);

                //3、解析显示分页条数据
                build_page_nav(result);
            }
        });
    }


    function build_blogs_table(result){
        //清空table表格
        $(".col-md-5").empty();
        //index：下标 user：单个对象
        var blogs=result.extend.pageInfo.list;
        $.each(blogs,function(index,blog){

            var yearTd=$("<div></div>").addClass("blog-left-agileits").append($("<p></p>")).append(blog.actionTime);

            var blogTd=$("<div></div>").addClass("blog-right-agileits-w3layouts");

            var titleTd=$("<h4></h4>").append($("<a></a>")).addClass("myfont").append(blog.title);
            titleTd.attr("id","title_btn");
            titleTd.attr("title-id",blog.id);

            var peopelsTd=$("<p></p>").append($("<a></a>")).append(blog.peoples);

           blogTd.append(titleTd).append(peopelsTd);

           var clear=$("<div></div>").addClass("clearfix");
            //append方法执行完成以后还是返回原来的元素
                $("<div></div>").addClass("blog-full-wthree")
                    .append(yearTd)
                    .append(blogTd)
                    .append(clear)
                    .appendTo(".col-md-5");

        });
    }

    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }

    //点击编辑按钮弹出模态框。

    $(document).on("click","#title_btn",function(){

        var id = $(this).attr("title-id");
        $.ajax({
            url:"${pageContext.request.contextPath}/blog/findById.action?id="+id,
            type:"GET",
            success:function(result){
                //填充用户信息
                $("#edit_title").text(result.extend.blog.title);
                $("#edit_address").text(result.extend.blog.address);
                $("#edit_event").text(result.extend.blog.event);

            }});
        //2、弹出模态框
        $("#showTeam").modal({
            backdrop:"static"
        });
    });
</script>
</body>
</html>
