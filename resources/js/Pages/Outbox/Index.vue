<script setup>

    import { ref } from 'vue'

    const outbox_data = ref([ {text: 'dummy content text', date: 'marzo 1, 2022' }, {text: 'content one ', date: 'january 10, 2023' }, {text: 'test two', date: 'december 24, 2023' } ]);
    const outbox_data_2 = ref([ {text: 'Livecomm dummy content', date: '' }, {text: 'recurring content', date: '' }, {text: 'dummy content', date: '' } ]);
    const outbox_data_3 = ref([ {text: 'review text', date: '' }, {text: 'review dummy ', date: '' }, {text: 'livecomm', date: '' } ]);


    


</script>
<template>

    <div>
    

        <Head title="Outbox" />
        <Header site_title="outbox" />

        <div class="bg-white pl-7 pr-6 py-7 pt-3 pb-4 mt-7">

            <Tabs :tabs_options="['sent', 'scheduled', 'recurring', 'review']" >

                <template #tab-head-button>

                    <div class="text-right">
                        <Link class="buttons_color block text-white rounded-full px-7 pt-0.5 pb-1 text-center lg_d_initial buttons_color_hover_2" href="/outbox/new-group-text">
                            <span class="hidden font-semibold text-xs uppercase md:inline">&nbsp;new group text</span>
                        </Link>
                    </div>

                </template>
            
                <template #tab-content>

                    <div id="sent" class="tabs_content">
                
                        <div class="my-8">
                            <p>
                                Group Text are effective way to attact new customers, connect with existing customers, and increase sales.
                            </p>
                            <p>
                                Here you can create new texts and view the performance of previusly sent texts.
                            </p>
                        </div>

                        <OutboxTabFilter />

                        <div>
                            <table class="w-full single_text_color__2">
                                <tr class="border-b border-gray-300">
                                    <th class="p-4 w-10 text-left">
                                    
                                        <checkbox checkbox_id="checked_all" checkbox_size="w-4 h-4 rounded-sm border border-gray-300" />
                                        
                                        <!-- <input type="checkbox" /> -->
                                    </th>
                                    <th class="p-4 text-left capitalize">
                                        select
                                    </th>
                                    <th class="p-4 w-60 text-right">
                                        <dropdown class="hover:bg-gray-100 rounded" placement="bottom-end">
                                            <template #default>
                                                <div class="group flex items-center cursor-pointer select-none">
                                                    <span class="text-sm mr-2 capitalize">
                                                        latest
                                                    </span>
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
                                    </th>
                                </tr>
                                <template v-for="contact in contacts.data">

                                    <tr class="border-b border-gray-300">
                                        <td class="p-4 text-left">

                                            <checkbox checkbox_id="message_sent" checkbox_size="w-4 h-4 rounded-sm border border-gray-300" />

                                        </td>
                                        <td class="p-4 text-left capitalize">
                                            to: {{ contact.name }}
                                        </td>
                                        <td class="p-4 text-right flex items-center justify-end">

                                            <button class="py-2 px-4 mr-2 uppercase text-xs border border-gray-300 hover:bg-gray-100">
                                                view report
                                            </button>
                                            <dropdown class="p-1 border border-gray-300 hover:bg-gray-100" placement="bottom-end">
                                                <template #default>
                                                    <div class="group flex items-center cursor-pointer select-none">
                                                        <icon class="w-6 h-6 fill-gray-300 focus:fill-indigo-600" name="cheveron-down" />
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
                                        </td>
                                    </tr>
                                
                                </template>
                            </table>
                        </div>

                        <div class="flex flex-col md:flex-row  justify-between pl-5 mt-5">

                            <div class="flex items-start">
                                <button class="uppercase text-xs outbox_pagination_prev">
                                    <p>
                                        prev
                                    </p>
                                </button>
                                <label class="h-30">
                                
                                    <p class="outbox_page_number text-xs font-semibold rounded py-3 px-2 mx-2">
                                        1-1
                                    </p>

                                </label>
                                <button class="uppercase text-xs outbox_pagination_next">
                                    <p>
                                        next
                                    </p>
                                </button>
                            </div>
                            <div class="flex md:mr-1 mt-16 md:mt-0 items-start">

                                <div class="mr-2 relative h-26">

                                    <select class="outbox_page_number py-3 px-2 text-xs font-semibold">
                                        <option>
                                        10
                                        </option>
                                    </select>

                                </div>
                                <label class="text-xs mt-2.5 single_text_color__2">
                                    Items per page
                                </label>

                            </div>

                        </div>
                        <div class="mt-10 mb-3">
                            <p class="single_text_color__8 uppercase font-semibold text-sm">
                                export sent texts
                            </p>
                        </div>

                    </div>
                    <div id="scheduled" class="hidden pb-10 tabs_content">

                        <div class="my-8">
                            <p>
                                Group Text are effective way to attact new customers, connect with existing customers, and increase sales.
                            </p>
                            <p>
                                Here you can create new texts and view the performance of previusly sent texts.
                            </p>
                        </div>
                        <OutboxTabFilter />

                        <OutboxMessages :main_texts="outbox_data"></OutboxMessages>

                    </div>
                    <div id="recurring" class="hidden pb-10 tabs_content">

                        <div class="my-8">
                            <p>
                                Group Text are effective way to attact new customers, connect with existing customers, and increase sales.
                            </p>
                            <p>
                                Here you can create new texts and view the performance of previusly sent texts.
                            </p>
                        </div>
                        <OutboxTabFilter />

                        <OutboxMessages :main_texts="outbox_data_2"></OutboxMessages>

                    </div>
                    <div id="review" class="hidden pb-10 tabs_content">

                        <div class="my-8">
                            <p class="text-sm w-3/5">
                                These messages are under review from out Compilance team to ensure they adhere to wireless carrier rules and regulations. Once a message has been approved, you may send it at any time. You can <Link class="single_text_color">learn more here</Link> 
                            </p>
                        </div>

                        <OutboxTabFilter />

                        <OutboxMessages :main_texts="outbox_data_3"></OutboxMessages>

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
import Checkbox from '@/Shared/Checkbox'
import OutboxMessages from '@/Shared/OutboxMessages'
import OutboxTabFilter from '@/Shared/OutboxTabFilter'

export default {
    components: {
        Header,
        Head,
        Icon,
        Link,
        Dropdown,
        Tabs,
        Checkbox,
        OutboxMessages,
        OutboxTabFilter,
    },
    props: {
        contacts: Object,
        auth: Object,
    },
    layout: Layout,
    methods: {
        
    },
}

</script>