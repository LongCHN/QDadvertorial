<?php
header("Content-Type: text/html; charset=utf-8");
include("../include/config.php");
include("../include/function.php");
include("checkuser.php");
?>

<?php
if ($_COOKIE["fg"] > 3) {
    echo "<script>alert('您的权限有限，请与超级管理员联系！');history.go(-1);</script>";
} else {
    $action = @$_REQUEST["action"];
    $data = date("Y-m-d h:i:s");
    $order_id = getyear($data) . getmonth($data) . getday($data) . rand(10000, 99999);

    $ID = @$_REQUEST["userid"];

    switch ($action) {
        case "add":
            $VipUser = $_COOKIE["VipUser"];
            $title = @$_REQUEST["biaoti"];
            $editer = @$_REQUEST["zuozhe"];
            $content = @$_REQUEST["neirong"];
            $price = @$_REQUEST["totalmoney"];
            $imgPath = @$_REQUEST["upload_path"];
            $medianame = substr(@$_REQUEST["yixuanhidden"], 0, -1);
            $flag = 0;
            $flag1 = 3;

            $sqls = "select * from user where VipUser='" . $VipUser . "'";
            $results = mysql_db_query($dbname, $sqls);
            $rss = mysql_fetch_array($results);
            if ($rss != NULL) {
                $leixing = "微信发布";
                $sqlc = "insert into caiwu (order_id,VipUser,operator,leixing,jine,flag,data) values ('" . $order_id . "','" . $VipUser . "','" . $VipUser . "','" . $leixing . "'," . $price . "," . $flag1 . ",'" . $data . "')";
                mysql_db_query($dbname, $sqlc);

                $yue = $rss["yue"] - $price;
                $sqlu = "update user set yue=" . $yue . " where VipUser='" . $VipUser . "'";
                mysql_db_query($dbname, $sqlu);

                $mtmc = explode(",", $medianame);
                if (count($mtmc) > 1) {
                    for ($i = 0; $i < count($mtmc); $i++) {
                        $medianame = $mtmc[$i];
                        $idmc = explode(":", $medianame);
                        $mid = $idmc[0];
                        $medianame = $idmc[1];
                        $sqla = "select * from wechat_info where ID=".$mid;
                        $resulta = mysql_db_query($dbname, $sqla);
                        $rsa = mysql_fetch_array($resulta);
                        $owner = $rsa["VipUser"];
                        if ($_COOKIE["fg"] == 1) {
                            $price = $rsa["headline_price"];
                        } elseif ($_COOKIE["fg"] == 2) {
                            $price = $rsa["headline_price"];
                        } else {
                            $price = $rsa["headline_price"];
                        }
                        $sql = "insert into wechat_list (order_id,owner,mid,title,medianame,content,price,VipUser,data,flag,img_path,writter) values ('" . $order_id . "','" . $owner . "'," . $mid . ",'" . $title . "','" . $medianame . "','" . $content . "'," . $price . ",'" . $VipUser . "','" . $data . "'," . $flag . ",'" . $imgPath . "','" . $editer . "')";
                        //die($sql);
                        mysql_db_query($dbname, $sql);

                    }echo "<script>alert('提交软文订单成功！');location.href='wechat.php';</script>";
                } else {
                    $idmc = explode(":", $medianame);
                    $mid = $idmc[0];
                    $medianame = $idmc[1];
                    //die($medianame);
                    $sqla = "select * from wechat_list where ID=" . $mid . "";
                    $resulta = mysql_db_query($dbname, $sqla);
                    $rsa = mysql_fetch_array($resulta);
                    $owner = $rsa["VipUser"];
                    /*if ($_COOKIE["fg"] == 1) {
                        $price = $rsa["dlprice"];
                    } elseif ($_COOKIE["fg"] == 2) {
                        $price = $rsa["scprice"];
                    } else {
                        $price = $rsa["price"];
                    }*/
                    $sql = "insert into wechat_list (order_id,owner,mid,title,medianame,content,price,VipUser,data,flag,img_path,writter) values ('" . $order_id . "','" . $owner . "'," . $mid . ",'" . $title . "','" . $medianame . "','" . $content . "'," . $price . ",'" . $VipUser . "','" . $data . "'," . $flag . ",'" . $imgPath . "','" . $editer . "')";
                    if (mysql_db_query($dbname, $sql))
                        echo "<script>alert('提交软文订单成功！');location.href='wechat.php';</script>";
                    //mysql_select_db($dbname);
                    //$result=mysql_query($sql);
                }

            }
            else {
                echo "<script>alert('提交软文订单失败！');location.href='wechat.php';</script>";
            }
            break;

        case "edit":
            $title = @$_REQUEST["biaoti"];
            $content = @$_REQUEST["neirong"];
            $editer = @$_REQUEST["zuozhe"];
            $imgPath = @$_REQUEST["upload_path"];
            $sql = "update wechat_list set title='" . $title . "',content='" . $content . "',writter='" . $editer . "',img_path='" . $imgPath . "' where ID=".$ID."";
            mysql_db_query($dbname, $sql);
            
            echo "<script>alert('成功保存修改！');location.href='wechat.php';</script>";
            break;

        case "redit":
            $weburl = @$_REQUEST["weburl"];
            $reason = @$_REQUEST["reason"];

            $sql = "update ruanwen_info set weburl='" . $weburl . "',reason='" . $reason . "' where ID=" . $ID . "";
            mysql_db_query($dbname, $sql);
            echo "<script>alert('成功保存修改！');location.href='ruanwen_list.php';</script>";
            break;

        case "pub":

            $flag = @$_REQUEST["flag"];
            $weburl = @$_REQUEST["weburl"];
            if ($flag == 2) {
                $sql = "update ruanwen_info set flag=" . $flag . ",weburl='" . $weburl . "',fbtime='" . $data . "' where ID=" . $ID . "";
            } else {
                $sql = "update ruanwen_info set flag=" . $flag . ",weburl='" . "',fbtime='" . "' where ID=" . $ID . "";
            }
            mysql_db_query($dbname, $sql);
            echo "<script>alert('发布操作成功！');location.href='ruanwen_list.php';</script>";
            break;

        case "rec":

            $flag = @$_REQUEST["flag"];
            $sql = "update ruanwen_info set flag=" . $flag . " where ID=" . $ID . "";
            mysql_db_query($dbname, $sql);
            echo "<script>alert('收稿操作成功！');location.href='ruanwen_list.php';</script>";
            break;

        case "ref":    //拒稿，不进行资金结算
            $VipUser = @$_REQUEST["User"];
            $reason = @$_REQUEST["reason"];
            //$price=@$_REQUEST["price"];
            $flag = @$_REQUEST["flag"];
            //$flag1=5;

            $sqls = "select * from user where VipUser='" . $VipUser . "'";
            $results = mysql_db_query($dbname, $sqls);
            $rss = mysql_fetch_array($results);
            if ($rss != NULL) {
                /*
                $leixing="软文拒稿";
                $sqlc="insert into caiwu (order_id,VipUser,operator,leixing,jine,flag,data) values ('".$order_id."','".$VipUser."','".$VipUser."','".$leixing."',".$price.",".$flag1.",'".$data."')";
                mysql_db_query($dbname,$sqlc);

                $yue=$rss["yue"]+$price;
                $sqlu="update user set yue=".$yue." where VipUser='".$VipUser."'";
                mysql_db_query($dbname,$sqlu);
                */

                $sql = "update ruanwen_info set reason='" . $reason . "',flag=" . $flag . ",fbtime='" . $data . "' where ID=" . $ID . "";
                mysql_db_query($dbname, $sql);
                echo "<script>alert('拒稿操作成功！');location.href='ruanwen_list.php';</script>";
            } else {
                $sqls = "select * from admin where AdminUser='" . $VipUser . "'";
                $results = mysql_db_query($dbname, $sqls);
                $rss = mysql_fetch_array($results);
                if ($rss != NULL) {
                    $sql = "update ruanwen_info set reason='" . $reason . "',flag=" . $flag . ",fbtime='" . $data . "' where ID=" . $ID . "";
                    mysql_db_query($dbname, $sql);
                    echo "<script>alert('拒稿操作成功！');location.href='ruanwen_list.php';</script>";
                } else {
                    echo "<script>alert('拒稿操作失败！');location.href='ruanwen_list.php';</script>";
                }
            }
            break;

        case "isdel":

            $VipUser = $_COOKIE["VipUser"];
            $ID = @$_REQUEST["ID"];
            $dyn = 1;
            $flag1 = 5;

            $sql1 = "select * from wechat_list where ID=" . $ID . "";
            $result1 = mysql_db_query($dbname, $sql1);
            $rs1 = mysql_fetch_array($result1);
            $price = $rs1["price"];

            $leixing = "软文删单";
            $sqlc = "insert into caiwu (order_id,VipUser,operator,leixing,jine,flag,data) values ('" . $order_id . "','" . $VipUser . "','" . $VipUser . "','" . $leixing . "'," . $price . "," . $flag1 . ",'" . $data . "')";
            mysql_db_query($dbname, $sqlc);

            $sqls = "select * from user where VipUser='" . $VipUser . "'";
            $results = mysql_db_query($dbname, $sqls);
            $rss = mysql_fetch_array($results);

            $yue = $rss["yue"] - $price;
            $sqlu = "update user set yue=" . $yue . " where VipUser='" . $VipUser . "'";
            mysql_db_query($dbname, $sqlu);

            $sql = "update wechat_list set dyn=" . $dyn . " where ID=" . $ID . "";
            mysql_db_query($dbname, $sql);
            echo "<script>alert('删单操作成功！');location.href='wechat.php';</script>";
            break;

        case "del":
            foreach (@$_REQUEST["ID"] as $it) {
                $sql2 = "delete from wechat_list where ID=" . $it . "";
                mysql_db_query($dbname, $sql2);
            }
            echo "<script>alert('删除软文成功！');location.href='wechat.php';</script>";
            break;
    }
}
?>