<script setup>

</script>

<template>

  <div class="flex flex-col md:flex-row  justify-between py-5 px-6">

      <div class="flex items-start pagination_page_number">

          <button class="pagination_prev uppercase hover:text-gray-600">
              <p>
                  prev
              </p>
          </button>
          <label class="relative h-26">
          
              <p class="page_number">
                  1-1 of 1
              </p>

          </label>
          <button class="pagination_next uppercase hover:text-gray-600">
              <p>
                  next
              </p>
          </button>

      </div>
      <div class="flex md:mr-1 mt-16 md:mt-0 items-start">
          <div class="mr-2 relative h-26">

              <select class="pagination-select pr-5">
                  <option>
                      10
                  </option>
              </select>

          </div>
          <label class="mt-2.5">
              Rows per page
          </label>
      </div>

  </div>

</template>

<script>

</script>





















<!-- VUE PAGINATION -->


<!-- <template>
  <div v-if="links.length > 3">
    <div class="flex flex-wrap -mb-1">
      <template v-for="(link, key) in links">
        <div v-if="link.url === null" :key="key" class="mb-1 mr-1 px-4 py-3 text-gray-400 text-sm leading-4 border rounded" v-html="link.label" />
        <Link v-else :key="`link-${key}`" class="mb-1 mr-1 px-4 py-3 focus:text-indigo-500 text-sm leading-4 hover:bg-white border focus:border-indigo-500 rounded" :class="{ 'bg-white': link.active }" :href="link.url" v-html="link.label" />
      </template>
    </div>
  </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
  components: {
    Link,
  },
  props: {
    links: Array,
  },
}
</script> -->
