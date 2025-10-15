<script setup>

    defineProps([ 'card_content', 'card_count' ])
    

</script>

<template> 

    <button class="flex" type="button" v-on:click="last_visit_toggle()">
        <p class="font-bold text-xs uppercase">Since last visit </p>
        <div class="dropdown_arrow w-1.5 h-1.5 border_1-5 border-black ml-2 mt-0.5" />
    </button>

    <!-- <p class="font-bold uppercase">Since last visit</p> -->

    <div id="last_visit_toggle_content" class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-4 gap-4 my-3">

        <template v-for="content in card_content">

            <div class="bg-white shadow overflow-hidden flex flex-col pt-7 pb-9 pl-8 pr-3">
                <p class="text-6xl 2xl:text-7xl 2xl:mb-6 mb-5 title-text-color">{{ card_count.length }}</p>
                <p class="text-md 2xl:text-xl uppercase">{{ content }}</p>
            </div>

        </template>

    </div>

</template>

<script>

    export default {
        methods: {

            last_visit_toggle() {

                console.log('clicked')

                var last_visit_content = document.getElementById('last_visit_toggle_content');
                last_visit_content.classList.toggle("hidden");


                var dropdown_arrow = document.querySelector('.dropdown_arrow')
                dropdown_arrow.classList.toggle('dropdown_arrow_close')

            }
        }
    }

</script>