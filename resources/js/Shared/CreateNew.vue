<script setup>

    defineProps([ 'main_text', 'first_button', 'bottom_button' ])

</script>

<template>

    <div class="bg-white general_box_width mt-14 mx-auto header_shadow max-w-full flex justify-center items-center flex-col p-7 pb-32">
        <p clasS="text_xxs font-semibold">
            {{ main_text }}
        </p>
        <Link clasS="text-xs font-bold single_text_color__8 uppercase mt-3">
            {{ first_button }}
        </Link>
    </div>

    <div class="mt-20 text-center">
        <Link href="contacts/new-contact" class="uppercase buttons_color py-1.5 px-5 text-xs inline-block text-white font-semibold rounded-full">
            {{ bottom_button }}
        </Link>
    </div>

</template>

<script>

import { Link } from '@inertiajs/inertia-vue3'

export default {
  components: {
    Link,
  },
}

</script>