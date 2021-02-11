<template>
  <div v-if="environment == 'dev'" class="dev">
      dev mode
    </div>
  <div v-else>
    <img src="https://placekitten.com/100/100" alt="Kitten placeholder" />
  </div>
</template>

<script>
export default {
  name: 'Gif',
  data: () => ({
    environment: process.env.NODE_ENV,
  }),
};
</script>

<style>
div {
  padding: 1em;
  margin: 1em;
  border: 1px;
}
.dev {
    width: 100px;
    height: 100px;
}
</style>