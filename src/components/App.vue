<template lang="html">
  <div>
    <button @click="amount++">Click me!</button>
    <br/>
    The button has been clicked  {{amount}} times.
  </div>
</template>

<script>
export default {
    data: () => ({
        amount: 0
    })

}
</script>

<style>
button{
    padding: 1em;
    border-radius: 1em;
}

</style>