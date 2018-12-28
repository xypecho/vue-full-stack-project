/*
 * @Author: xypecho
 * @Date: 2018-12-13 20:36:46
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-25 22:36:48
 */
 <!--
 @component name: 瀑布流组件
 @param name: files 图片数组
 @param name: fileWidth 单张图片的宽度
 @param name: column 一行展示多少列
 @param name: defaultImg 懒加载时显示的默认图片
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
        :src="defaultImg"
        :data-src='item'
        :width="fileWidth"
        :height="imgHeight[index]"
      >
    </div>
  </div>
</template>

<script>
import { getImgWidthAndHeight } from '@/tools/index';
import lazyLoadingImg from '../../assets/images/lazy_loading.gif';

const _ = require('lodash');

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
    defaultImg: {
      type: String,
      default: lazyLoadingImg
    }
  },
  data() {
    return {
      imgHeight: [], // 所有图片的单个的高度
      heightArr: [] // 存储每行所有图片的高度
    };
  },
  created() {
    this.getImageSize();
    this.resizeImg = _.debounce(this.initWaterfalls, 500);
  },
  mounted() {
    window.addEventListener('scroll', this.juageISVisible, true);
  },
  methods: {
    async getImageSize() {
      await Promise.all(this.files.map(async (file) => {
        const size = await getImgWidthAndHeight(file);
        this.imgHeight.push(size.height * (this.fileWidth / size.width));
      }));
    },
    initWaterfalls() {
      this.heightArr = [];
      this.$refs.waterfalls.style.width = `${(this.column * (this.fileWidth + 20)) + 20}px`;
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
        element.style.top = '0px';
        this.heightArr[index] = element.offsetHeight;
      } else {
        const minValue = Math.min(...this.heightArr); // 找出第一行高度最小的
        const minIndex = this.heightArr.findIndex(item => item === minValue); // 找出高度最小的值的索引
        element.style.left = `${this.$refs.waterfalls.getElementsByClassName('waterfalls-items')[minIndex].offsetLeft}px`;
        element.style.top = `${minValue}px`;
        this.heightArr[minIndex] = minValue + element.clientHeight;
        this.$refs.waterfalls.style.height = `${minValue + element.clientHeight}px`;
      }
      const windowHeight = document.body.clientHeight; // 网页窗口高度
      if (element.getBoundingClientRect().top <= windowHeight) {
        element.children[0].src = element.children[0].dataset.src;
      }
    },
    juageISVisible() {
      if (this.files.length === this.imgHeight.length) {
        // 用来判断图片是否出现在网页可见区域，公式为元素到内容顶部的距离 <= 滚动距离 + 窗口高度
        const windowHeight = document.body.clientHeight; // 网页窗口高度
        const item = document.getElementsByClassName('waterfalls-items');
        for (let i = 0; i < item.length; i++) {
          if (item[i].getBoundingClientRect().top <= windowHeight) {
            item[i].children[0].src = item[i].children[0].dataset.src;
          }
        }
      }
    }
  },
  watch: {
    column() {
      if (this.files.length === this.imgHeight.length) {
        this.initWaterfalls();
      }
    },
    imgHeight() {
      this.resizeImg();
    }
  }
};
</script>
<style lang='stylus' scoped>
.waterfalls {
  clear: both;
  background: #fff;
  position: relative;
  margin: 0 auto;

  .waterfalls-items {
    position: absolute;
    padding: 0 20px 20px 20px;
    background: #fff;
  }
}
</style>
