<template>
    <div class="content">
        <vHeader></vHeader>
        <p>这是content</p>
    </div>
</template>
<script>
import vHeader from '@/components/header/header';

export default {
  components: {
    vHeader
  }
};
</script>
<style lang="stylus" scoped>
.content {
    width: 100%;
    height: 100%;
}
</style>
