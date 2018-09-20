<template>
    <div class="admin">
        <nav-bar></nav-bar>
        <vHeader></vHeader>
        <div class='admin-content'>
            <p>这是只有admin才能看到的页面</p>
        </div>
    </div>
</template>
<script>
import navBar from '@/components/navBar/navBar';
import vHeader from '@/components/header/header';

export default {
  components: {
    navBar,
    vHeader
  }
};
</script>
<style lang="stylus" scoped>
.admin {
    display: flex;
    width: 100%;
    height: 100%;
    overflow: hidden;

    nav-bar {
        flex: 0 0 200px;
    }

    content {
        flex: 1;
    }
}

.admin-content {
    position: absolute;
    top: 50%;
    left: 50%;
}
</style>
