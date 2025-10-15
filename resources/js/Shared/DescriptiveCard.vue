<script setup>

    defineProps([ 'card_content', 'section_title', 'title_class', 'text_size' ])

</script>

<template>

    <div class="">

      <p class="font-bold uppercase text-xs">{{ section_title }}</p>

      <div class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 gap-6 mx-auto my-3">

        <template v-for="content in card_content">

            <div class="bg-white shadow p-11 pb-20 pr-12 2xl:pr-20">
                <p :class="text_size, title_class != '' ? title_class : 'capitalize' " class="font-bold text-sm title-text-color">
                    {{ content.title }}
                </p>
                <p :class="text_size" class="text-sm font-semibold capitalize">{{ content.text }}</p>
            </div>
        
        </template>
        
      </div>

    </div>

</template>

<script>

</script>