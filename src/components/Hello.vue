<template lang="jade">
.hello
  h1 {{ msg }}
</template>

<script lang="coffee">
module.exports =
  data: ->
    # note: changing this line won't causes changes
    # with hot-reload because the reloaded component
    # preserves its current state and we are modifying
    # its initial state.
    msg: 'Hello World!'
</script>
