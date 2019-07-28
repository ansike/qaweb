<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue';

export default {
  name: 'home',
  components: {
    HelloWorld,
  },
  mounted() {
    const xhr = new XMLHttpRequest();
    xhr.open('get', 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx23f0e6c4c375f363&secret=6c7e3538ae351df909843b81d38122af');
    xhr.send();
  },
};
</script>
