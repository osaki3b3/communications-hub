<template>
    <div>
        <Head title="New Contat" />
        <Header site_title="contacts" />

        <section>

            <CreateNew 
                main_text="Need specific requirements sheet for livecomm" 
                first_button="new contact" 
                bottom_button="create new contact" 
            />
        

        </section>
    </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import Header from '@/Shared/header'
import CreateNew from '@/Shared/CreateNew'

export default {
  components: {
    Head,
    Link,
    Header,
    CreateNew,
  },
  layout: Layout,
  props: {
    contact: Object,
    organizations: Array,
  },
}
</script>