<template lang="html">
  <div>
    <button @click="amount++">Click me!</button>
    <br/>
    The button has been clicked  {{amount}} times.
    <p>
        {{passion}}
    </p>
    <Gif/>
  </div>
</template>

// <script>
// console.log('process', process);
// console.log('process.env', process.env);
// console.log('process.env.SECRET_PASSION', process.env.SECRET_PASSION);

import Gif from './Gif.vue'
export default {
    components: {
        Gif
    },
    data: () => ({
        amount: 0,
        passion: process.env.SECRET_PASSION
    })

}
</script>

<style>
button{
    padding: 1em;
    border-radius: 1em;
}

</style>