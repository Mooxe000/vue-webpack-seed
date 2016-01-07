<template lang="jade">
#app
  img.logo(
  src="./assets/logo.png"
  )
  hello
</template>

<script lang="coffee">
Hello = require './components/Hello'

module.exports =
  components:
    hello: Hello
</script>

<style lang="stylus">
body
  font-family: Helvetica, sans-serif
</style>
