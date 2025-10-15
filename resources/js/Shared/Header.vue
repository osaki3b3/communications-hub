<script setup>

    defineProps(['site_title'])

</script>

<style>

    .header-font__size {
        font-size: 13px;
    }

</style>

<template>

    <header>

        <div class="flex items-center justify-between xl:grid grid-cols-2 bg-white py-6 2xl:py-8 pl-8 pr-12 header_shadow">

        <div>
            <h1 class="text-xs xl:text-md font-bold uppercase">{{ site_title }}</h1>
        </div>

        <nav class="text-right">
            <div class="flex flex-col md:flex-row justify-end">

                <div class=" md:mx-5 xl:flex items-center">
                    
                    <Link class="header-font__size capitalize hover_font_semibold" href="#">
                        Phone number registered
                    </Link>
                    
                </div>

                <div class="breadcrum"></div>

                <div class="md:w-28 flex items-center justify-center">

                    <Link class="header-font__size capitalize hover_font_semibold" href="#">
                        user credits
                    </Link>

                </div>

                <div class="breadcrum"></div>

                <div class="md:w-20 md:ml-2 xl:flex items-center justify-end">

                    <Link class="header-font__size capitalize hover_font_semibold" href="/plan">
                        plan name
                    </Link>
                    
                </div>

            </div>
        </nav>

        </div>
    </header>

</template>

<script>

import { Link } from '@inertiajs/inertia-vue3'

export default {
  components: {
    Link,
  },
  props: {
    auth: Object,
  },
}
</script>