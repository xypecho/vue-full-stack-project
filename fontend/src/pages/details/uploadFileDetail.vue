/*
 * @Author: xypecho
 * @Date: 2018-12-10 19:58:29
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-13 22:32:11
 */
<template>
  <div
    class="uploadFileDetail"
    ref="uploadFileDetail"
  >
    <div class="back_btn">
      <el-button
        type='primary'
        size='mini'
        @click='$router.back()'
      >返回</el-button>
    </div>
    <waterfalls
      v-if="files && files.length>0"
      :files='files'
      :column='column'
      :fileWidth='fileWidth'
    ></waterfalls>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import waterfalls from '@/components/waterfalls/waterfalls';

export default {
  data() {
    return {
      id: this.$route.query.id,
      files: [],
      column: 0,
      fileWidth: 222
    };
  },
  created() {
    this.getFiles();
  },
  mounted() {
    this.setWaterfallsStyle();
  },
  watch: {
    isCollapse() {
      setTimeout(() => {
        this.setWaterfallsStyle();
      }, 500);
    }
  },
  methods: {
    setWaterfallsStyle() {
      this.$nextTick(() => {
        const wrapperWidth = this.$refs.uploadFileDetail.offsetWidth;
        this.column = Math.floor(wrapperWidth / (this.fileWidth + 20));
      });
    },
    getFiles() {
      this.$axios.post('/api/upload/getFileDetails', { id: this.id }).then(res => {
        if (res.data.status === 200) {
          this.files = res.data.data[0].files.split(';');
        } else {
          this.$tips({
            type: 'error',
            message: '获取文件详情失败，请稍候重试'
          });
        }
      }).catch(err => {
        console.error(err);
      });
    }
  },
  computed: {
    ...mapGetters(['isCollapse'])
  },
  components: {
    waterfalls
  }
};
</script>
<style lang='stylus' scoped>
.uploadFileDetail {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: #fff;
  z-index: 100;

  .back_btn {
    padding: 20px;
    float: right;
  }
}
</style>
