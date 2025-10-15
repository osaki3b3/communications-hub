<script setup>

    defineProps(
        ['title_card']
    )

</script>

<template>


    <div class="accordion">

        <template v-for="title in title_card">

            <div class="card">
                <div class="card-header">
                    <h2 class="mb-0">
                        <p class="text-left">

                            {{ title }}

                        </p>
                    </h2>
                </div>
                <div class="card-body">
                    
                    <slot name="accordion_content" />
                    
                </div>
            </div>

        </template>
        
    </div>


</template>