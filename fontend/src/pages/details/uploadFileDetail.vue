/*
 * @Author: xypecho
 * @Date: 2018-12-10 19:58:29
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-12 22:08:24
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
    <div
      class="waterfalls_wrapper"
      ref='waterfalls_wrapper'
    >
      <div
        class="waterfalls_item"
        v-for="(item, index) in files"
        :key="index"
      >
        <img :src="item">
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  data() {
    return {
      id: this.$route.query.id,
      files: [],
      wrapperWidth: 0
    };
  },
  created() {
    this.getFiles();
  },
  mounted() {
    this.getFileDetails();
  },
  watch: {
    isCollapse() {
      this.getFileDetails();
    }
  },
  methods: {
    getFiles() {
      this.$axios.post('/api/upload/getFileDetails', { id: this.id }).then(res => {
        this.files = res.data.data[0].files.split(';');
      }).catch(err => {
        console.error(err);
      });
    },
    getFileDetails() {
      this.wrapperWidth = document.querySelector('.uploadFileDetail').clientWidth;
      this.$nextTick(() => {
        const filesBox = this.$refs.waterfalls_wrapper.getElementsByClassName('waterfalls_item');
        for (let i = 0; i < filesBox.length; i++) {
          this.setElementStyle(filesBox[i], this.files[i], i);
        }
      });
    },
    setElementStyle(element, file, index) {
      element.style.left = `${index * 150}px`;
    }
  },
  computed: {
    ...mapGetters(['isCollapse'])
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

  .back_btn {
    padding: 20px;
    float: right;
  }

  .waterfalls_wrapper {
    clear: both;
    position: relative;
    background: #fff;

    .waterfalls_item {
      position: absolute;
      padding: 3px;
      font-size: 0;
      box-sizing: border-box;
      transition: all 0.3s ease;
      background: #fff;

      & img {
        width: 200px;
        margin: 20px;
      }
    }
  }
}
</style>
