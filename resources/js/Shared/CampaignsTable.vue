<script setup>

    defineProps([ 'keywords_options' ])

</script>

<template>


    <template v-for="keywords in keywords_options" >

        <div class="border-b border-gray-300 flex justify-between items-center flex-col sm:flex-row">
            <div class="py-2 flex">
                <button type="button" class="keywords-plus-icon">
                    <div class="icon" />
                </button>
                <div class="inline-block">
                    <p class="font-semibold single_text_color__2 uppercase text-md mb-1 mt-2">
                        join - <span class="font-normal">[ {{ keywords.text }} ]</span>
                    </p>
                    <p class="capitalize single_text_color__2 text-sm mt-2 mb-1">
                        groups: {{ keywords.groups }}
                    </p>
                    <p class="text-xs single_text_color__4 text-gray-400 mt-1 mb-2 capitalize">
                        created - {{ keywords.created }}
                    </p>
                </div>
            </div>
            
            <div class="flex my-3 md:my-0">
                <button class="rounded py-2 px-4 border border-gray-300 hover:bg-gray-100 focus:bg-gray-100">
                    <p class="text-sm uppercase title-text-color">
                        edit keyword
                    </p>
                </button>
                <dropdown class="rounded border border-gray-300 ml-2 hover:bg-gray-100 focus:bg-gray-100" placement="bottom-end">
                    <template #default>
                        <div class="group flex items-center cursor-pointer select-none">
                            <icon class="w-5 h-5 m-2 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                        </div>
                    </template>
                    <template #dropdown>
                        <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                            <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" :href="`#`">My Profile</Link>
                            <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                            <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                        </div>
                    </template>
                </dropdown>
            </div>
        </div>
    
    </template>


</template>

<script>

import Dropdown from '@/Shared/Dropdown'
import Icon from '@/Shared/Icon'


export default {
    components: {
        Dropdown,
        Icon,
    },
}

</script>