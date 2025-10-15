<script setup>

  import { ref } from 'vue'
  const array_texts = ref([ 'unread messages', 'sent message', 'contacts subscribed', 'contacts unsuscribed' ]);


</script>

<template>
  <div>
    <Head title="Reporting" />
    <Header site_title="reporting" />

    <div clasS="bg-white mt-7">
      <div class="w-full px-5 py-56 h-96 shadow flex justify-center items-center flex-col">
      
        <p class="text-xd">
          Need specific requirements graphic sheet for livecomm
        </p>

        <Link href="#" class="uppercase text-xs title-text-color mt-3 hover_font_semibold">
            statistics
        </Link>
      
      </div>
    </div>
    <div class="mt-7">

      <since-last-visit :card_content="array_texts" :card_count="contacts['data']" />

    </div>

  </div>
</template>

<script>
import Header from '@/Shared/header'
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import SinceLastVisit from '@/Shared/SinceLastVisit'

export default {
  components: {
    Head,
    Link,
    Header,
    SinceLastVisit,
  },
  layout: Layout,
  props: {

    contacts: Object,

  }
}
</script>
