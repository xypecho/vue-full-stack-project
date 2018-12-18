/*
 * @Author: xypecho
 * @Date: 2018-12-13 20:36:46
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-13 22:40:04
 */
 <!--
 @component name: 瀑布流组件
 @param name: files 图片数组
 @param name: fileWidth 单张图片的宽度
 @param name: column 一行展示多少列
 @param name: lazy 是否启用懒加载
 -->
<template>
  <div
    class="waterfalls"
    ref="waterfalls"
  >
    <div
      class="waterfalls-items"
      v-for="(item,index) in files"
      :key='index'
    >
      <img
        :src="item"
        alt=""
        :width="fileWidth"
      >
    </div>
  </div>
</template>

<script>
export default {
  props: {
    files: {
      type: Array,
      default: () => []
    },
    fileWidth: {
      type: Number,
      default: 200
    },
    column: {
      type: Number,
      default: 5
    },
    lazy: {
      type: Boolean,
      default: true
    }
  },
  data() {
    return {
      heightArr: [] // 存储第行所有图片的高度
    };
  },
  mounted() {
    this.initWaterfalls();
  },
  methods: {
    initWaterfalls() {
      setTimeout(() => {
        const item = this.$refs.waterfalls.getElementsByClassName('waterfalls-items');
        for (let i = 0; i < item.length; i++) {
          this.setWaterfallsStyle(item[i], this.files[i], i);
        }
      }, 500);
    },
    setWaterfallsStyle(element, file, index) {
      if (index < this.column) {
        element.style.left = `${index * (this.fileWidth + 20)}px`;
        this.heightArr[index] = this.heightArr[index] ? this.heightArr[index] + element.offsetHeight : element.offsetHeight;
      } else {
        let minHeight = {};
        for (let i = 0; i < this.heightArr.length; i++) {
          if (minHeight.value && (minHeight.value > this.heightArr[i])) {
            minHeight = { index: i, value: this.heightArr[i] };
          } else {
            minHeight = { index: i, value: this.heightArr[i] };
          }
        }
        element.style.left = `${this.$refs.waterfalls.getElementsByClassName('waterfalls-items')[minHeight.index].offsetLeft}px`;
        element.style.top = `${minHeight.value}px`;
        this.$refs.waterfalls.style.height = `${element.offsetTop * 2}px`;
        this.heightArr[minHeight.index] = 800;
      }
    }
  },
  watch: {
    column() {
      this.initWaterfalls();
    }
  }
};
</script>
<style lang='stylus' scoped>
.waterfalls {
  clear: both;
  background: #fff;
  width: 100%;
  height: 100%;
  position: relative;

  .waterfalls-items {
    position: absolute;
    padding: 0 20px 20px 20px;
    background: #fff;
  }
}
</style>
