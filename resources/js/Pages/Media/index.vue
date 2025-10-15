<script setup>

    import { ref } from 'vue'

    const images_data = ref([ 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif', 'img/building-ok.avif' ]);


</script>

<template>

    <div>
        <Head title="Media Library" />
        <Header site_title="media library" />

        <div class="bg-white py-2 px-6 mt-7">


            <Tabs :tabs_options="['my-media', 'free-images']">

                <template #tab-head-button>

                    <div class="my-media head_button text-right add-your-media">
                        <Link class="buttons_color block rounded-full px-8 py-1.5 text-center lg_d_initial text_xxs font-bold uppercase text-white" href="#">
                            add your media
                        </Link>
                    </div>
                    
                </template>

                <template #tab-content>
                
                    <div  id="my-media" class="tabs_content">
                
                        <div class="mb-14">
                            <Dropdown class="w-56 py-3 px-3.5 border border-gray-300">

                                <template #default>
                                    <div class="group flex items-center cursor-pointer select-none">
                                        <span class="text-sm mr-4 font-semibold capitalize single_text_color__2">
                                            all media
                                        </span>
                                        <div class="dropdown_arrow border-black w-2.5 h-2.5 ml-auto -mt-2 mr-2 border_1-5"/>
                                        <!-- <icon class="ml-auto w-4 h-4 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" /> -->
                                    </div>
                                </template>
                                <template #dropdown>
                                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                                        <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" :href="`/users/${auth.user.id}/edit`">My Profile</Link>
                                        <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="/users">Manage Users</Link>
                                        <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="/logout" method="delete" as="button">Logout</Link>
                                    </div>
                                </template>

                            </Dropdown>
                            
                        </div>

                        <img-cards :image_file_data="images_data" />

                    </div>
                    <div id="free-images" class="tabs_content hidden">

                        <div class="pt-8 mb-6 flex flex-col sm:flex-row">

                            <label class="w-full mr-6 flex mb-3 sm:mb-0">
                                
                                <p class="text-white py-3 px-4 text-center boxes_background">
                                    ?
                                </p>
                                <input class="py-3 pr-3 boxes_background w-full placeholder-blue-300" placeholder="Search" />

                            </label>
                            

                            <Dropdown class="w-full sm:w-52 px-3 py-2 border border-gray-300">

                                <template #default>
                                    <div class="group flex items-center cursor-pointer select-none">
                                        <span class="text-sm mr-4 font-semibold single_text_color__2 capitalize">
                                            all image types
                                        </span>
                                        <icon class="ml-auto w-7 h-7 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                                    </div>
                                </template>
                                <template #dropdown>
                                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                                        <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" :href="`#`">My Profile</Link>
                                        <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                                        <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                                    </div>
                                </template>

                            </Dropdown>
                            
                        </div>

                        <img-cards :image_file_data="images_data" />

                    </div>
                
                </template>
            
            
            </Tabs>
        </div>
    
    </div>

</template>


<script>

    import Header from '@/Shared/header'
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import Layout from '@/Shared/Layout'    
    import Icon from '@/Shared/Icon'
    import Dropdown from '@/Shared/Dropdown'
    import Tabs from '@/Shared/Tabs'
    import ImgCards from '@/Shared/ImgCards'


export default {
    components: {
        Header,
        Head,
        Icon,
        Link,
        Dropdown,
        Tabs,
        ImgCards,
    },
    props: {
        auth: Object,
    },
    layout: Layout,
    methods: {
        reset() {
            this.form = mapValues(this.form, () => null)
        },
    },
}

</script>
