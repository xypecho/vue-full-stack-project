/*
 * @Author: xueyp
 * @Date: 2018-11-03 14:00:05
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-08 14:49:50
 */
<template>
    <div class="admin">
        <div class="admin-left">
            <img src="~@/assets/images/stand.png" alt="">
        </div>
        <div class="admin-right">
            <p>这是只有管理员账户才能看到的页面哦...</p>
            <span>只有管理员账户登录时才能进入此页面，非管理员账户点击时会跳转至404页面</span>
            <p @click="$router.push('/')">返回工作台</p>
        </div>
    </div>
</template>
<script>
export default {};
</script>
<style lang="stylus" scoped>
.admin {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;

    .admin-left {
        flex: 1;
        text-align: center;

        img {
            height: 500px;
        }
    }

    .admin-right {
        flex: 1;
        color: #409EFF;

        p {
            color: #222;
            font-size: 20px;
            line-height: 24px;
            margin-bottom: 10px;
            font-weight: 700;

            &:last-child {
                color: #409eff;
                font-size: 14px;
                cursor: pointer;
                font-weight: 100;
            }
        }

        span {
            font-size: 13px;
            line-height: 21px;
            color: grey;
            margin-bottom: 30px;
        }
    }
}
</style>

