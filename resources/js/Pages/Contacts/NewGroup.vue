<template>
    <div>
        <Head title="New Contat" />
        <Header site_title="contacts" />

        <section>

            <CreateNew 
                main_text="Need specific requirements sheet for livecomm" 
                first_button="new group" 
                bottom_button="create new group" 
            />

        </section>
    </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import Header from '@/Shared/header'

export default {
  components: {
    Head,
    Link,
    Header,
  },
  layout: Layout,
  props: {
    contact: Object,
    organizations: Array,
  },
}
</script>