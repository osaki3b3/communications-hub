<script setup>

    defineProps(['users_img', 'users_title'])

</script>

<template>

    <div class="mb-8 mt-5">

        <p class="mb-2 font-bold text-xs uppercase">
            {{ users_title }}
        </p>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-5">

            <template v-for="user in users_img">
            
                <div :class="user.user" class="bg-white cards_shadow pt-4 pb-5 px-5 text-center">
                    <div class="profile_background w-24 h-24 rounded-full mx-auto overflow-hidden">
                        <img :src="user['image']" />
                    </div>
                    <button class="rounded-full buttons_color text-white uppercase text-xs mt-3 py-1.5 max-w-full w-40 font-semibold">
                        connect
                    </button>
                </div>
            
            </template>


        </div>

    </div>

</template>

<script>


</script>