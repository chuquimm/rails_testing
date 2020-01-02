<template>
  <div>
    <p>{{ message }}</p>
    <li>{{ dato }}</li>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  props: ["dato"]
}
</script>

<style>

</style>