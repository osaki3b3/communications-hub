<script setup>

    defineProps([ 'main_texts' ])

</script>

<template>

    <div class="mt-10">

        <template v-for="text in main_texts" >
        
            <Link href="#" class="p-5 pr-8 mb-2 bg-gray-100 flex flex-col justify-between sm:flex-row">
                <p class="capitalize single_text_color__5 text-sm">
                    {{ text.text }}
                </p>

                <template v-if="text.date != ''">
                    <p class="text-sm text-gray-400">
                       <span class="capitalize">{{ text.text }}</span> from: <span class="capitalize">{{ text.date }}</span>
                    </p>
                </template>

            </Link>
        
        </template>

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