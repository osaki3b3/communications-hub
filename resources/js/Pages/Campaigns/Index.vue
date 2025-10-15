<script setup>

    import { ref } from 'vue'
    const keywards_texts = ref([ { text: 'DEMO', groups: 'join', created: '04-1-2023' }, { text: 'DEMO', groups: 'join', created: '02-20-2023' }, { text: 'DEMO', groups: 'join', created: '09-05-2023' }, { text: 'DEMO', groups: 'join', created: '06-19-2023' } ]);


</script>

<template>
    <div>
        <Head title="Campaigns" />
        <Header site_title="campaigns" />
        <div class="bg-white mt-8 pb-24 pt-4 px-7">

            <Tabs :tabs_options="['keywords', 'drip campaigns']">
                <template #tab-content>

                    <div id="keywords" class="tabs_content">
                        <div class="pb-5 border-b border-gray-300">

                            <p class="text-md leading-snug w-10/12 lg:w-9/12">
                                Keywords are unique, custom words, like 'DEALS', that help grow contact lists, Contact opt in to receive promotions, notification or information by texting in a Keywords. <Link class="title-text-color">Learns more</Link>  
                            </p>

                            <div class="flex justify-end">
                            
                                <dropdown class="mt-10 mr-4 hover:bg-gray-100 focus:bg-gray-100" placement="bottom-end">
                                    <template #default>
                                        <div class="group flex items-center cursor-pointer select-none">
                                            <p class="capitalize mr-4">
                                                latest
                                            </p>
                                            <div class="dropdown_full_arrow" />
                                            <!-- <icon class="w-5 h-5 fill-gray-700 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" /> -->
                                            <div class="dropdown_full_arrow border_7" />
                                        </div>
                                    </template>
                                    <template #dropdown>
                                        <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                                            <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" :href="`/users/${auth.user.id}/edit`">My Profile</Link>
                                            <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="/users">Manage Users</Link>
                                            <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="/logout" method="delete" as="button">Logout</Link>
                                        </div>
                                    </template>
                                </dropdown>

                            </div>
                        
                        </div>

                        <CampaignsTable :keywords_options="keywards_texts" />

                        <Pagination></Pagination>
                        
                        <div class="mt-5 pl-3">
                            <Link class="uppercase text-sm title-text-color font-bold" href="#">
                                export keyward report
                            </Link>
                        </div>
                    </div>
                    
                    <div :id="'drip campaigns'" class="hidden tabs_content">

                        <div class=" max-w-4xl px-5 mx-auto text-center pt-8">
                            <h2 class="text-3xl mb-5 single_text_color__2 capitalize">
                                automate your text marketing with drip campaigns
                            </h2>
                            <p class="text-md single_text_color__2">
                                Increase engagement with a series of automated, timed messages based on trigger that you set
                            </p>
                            <Link class="mt-16 block" href="/">
                                <logo class="mx-auto fill-white" width="230" />
                            </Link>

                            <Link class="mt-5 mb-20 text-sm inline-block font-semibold px-16 py-3 rounded-full text-white uppercase new-sing-up" href="/">
                                get started
                            </Link>

                            <Link class="block title-text-color text-xs mx-auto font-bold mb-5" href="#">
                                Wich will be the livecomm process to create drip Campaigns?
                            </Link>
                        </div>

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
import Dropdown from '@/Shared/Dropdown'
import Icon from '@/Shared/Icon'
import Logo from '@/Shared/Logo'
import Tabs from '@/Shared/Tabs'
import CampaignsTable from '@/Shared/CampaignsTable'
import Pagination from '@/Shared/Pagination'


export default {
    components: {
        Header,
        Head,
        Link,
        Dropdown,
        Icon,
        Logo,
        Tabs,
        CampaignsTable,
        Pagination,
    },
    layout: Layout,
    props: {
        auth: Object,
    },
    variants: {
        extend: {
        padding: ['textColor'],
        }
    },
}

</script>