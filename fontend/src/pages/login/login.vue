<template>
  <div class="login">
    <div class="signIn">
      <div class="signInInfo">
        
      </div>
      <div class="signInBox">

      </div>
    </div>
    <div class="signUp"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      msg: 'hello cz'
    };
  }
};
</script>

<style lang="stylus" scoped>
.login {
  display: flex;
  background-color: rgba(0, 0, 0, 0.2);
  height: 100%;
  justify-content: space-around;

  &::before {
    background-image: url('~@/assets/images/marvin-meyer-571072-unsplash.jpg');
    background-size: cover;
    content: '';
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: -999;
  }
}
</style>

