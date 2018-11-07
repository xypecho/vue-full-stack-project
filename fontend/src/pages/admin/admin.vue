<template>
    <div class="admin">
        <div class="admin-left">
            <img src="~@/assets/images/xuexiaoban.png" alt="">
        </div>
        <div class="admin-right">
            <p>这是只有admin才能看到的页面哦</p>
        </div>
    </div>
</template>
<script>
export default {};
</script>
<style lang="stylus" scoped>
.admin {
    display: flex;
    width: 100%;
    height: 100%;
    align-items: center;

    .admin-left, .admin-right {
        flex: 1;
    }

    .admin-right {
        p {
            font-size: 17px;
            color: #409EFF;
        }
    }
}
</style>
