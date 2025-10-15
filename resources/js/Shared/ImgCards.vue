<script setup>

    defineProps(
        ['image_file_data']
    );


</script>


<template>

    <div class="grid grid-cols-1 gap-4 md:grid-cols-2 xl:grid-cols-4">

        <template v-for="file_data in image_file_data">

            <div class="border border-gray-200 p-2">
                <div class="boxes_background w-full h-44 overflow-hidden">
                    <img :src="file_data" />
                </div>
            </div>
        
        </template>

    </div>

</template>


<script>

</script>