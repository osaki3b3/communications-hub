<script setup>

    import { ref } from 'vue'
    const checkbox__id = ref([{ id: 'manny', message: 'manny oblitas', data: 'Fer 5' }, { id: 'manny-2', message: 'manny oblitas 2', data: 'Jan 10' }, { id: 'manny-3', message: 'manny oblitas 3', data: 'Apr 3' }, { id: 'manny-4', message: 'manny oblitas 4', data: 'Fer 7' }, { id: 'manny-5', message: 'manny oblitas 5', data: 'Mar 6' }])
    const select_filter_number = ref([{ option: 'all number', value: 'all-numbers' }, { option: 'favorites', value: 'favorites' }])
    const select_show = ref([{ option: 'Recent', value: 'recent' }, { option: 'all time', value: 'all-time' }])

</script>

<template>
<div>

    <Head title="Inbox" />
    <Header site_title="inbox" />

    <div class="grid grid-cols-1 lg:grid-cols-4 pl-5 pr-5 lg:pr-0 mt-7">
        <div class="lg:mr-6">

            <form>
                <div>
                    <label class="mb-2 mt-4 font-bold single_text_color__2 text-sm block uppercase">
                        filter by number
                    </label>

                    <select name="" id="" class="tail">
                        <option value="me">helo world</option>
                    </select>

                    <CustomSelect select_name="filter_by_number" :options="select_filter_number" ></CustomSelect> 


                    <!-- <select class="w-full px-3 py-2.5 single_text_color__2 capitalize select_border shadow-sm" name="">
                        <option value="">
                            All Numbers
                        </option>
                    </select> -->
                </div>
                <div>
                    <label class="mb-2 mt-5 font-semibold single_text_color__2 text-sm block uppercase">
                        show
                    </label>

                    <CustomSelect select_name="show" :options="select_show" ></CustomSelect> 

                    <!-- <select class="w-full px-3 py-2.5 single_text_color__2 capitalize select_border shadow-sm" name="">
                        <option value="">
                            recent
                        </option>
                    </select> -->
                </div>
                
                <div>
                    <label class="mb-4 mt-10 text-sm font-bold block uppercase">
                        inbox options
                    </label>
                    <div class="flex pb-7">
                        <label class="mr-2 checkbox_toggle" for="input-toggle">
                            <input class="input_checkbox_toggle" id="input-toggle" type="checkbox" />
                            <div class="checkbox_slider slider-round" />
                        </label>
                        <p class="capitalize">
                            show group texts
                        </p>
                    </div>
                    <div class="flex pb-7">
                        <label class="mr-2 checkbox_toggle" for="input-toggle-2">
                            <input class="input_checkbox_toggle" id="input-toggle-2" type="checkbox" />
                            <div class="checkbox_slider slider-round" />
                        </label>
                        <p class="capitalize">
                            show opt-ins
                        </p>
                    </div>
                    <div class="flex pb-7">
                        <label class="mr-2 checkbox_toggle" for="input-toggle-3">
                            <input class="input_checkbox_toggle" id="input-toggle-3" type="checkbox" />
                            <div class="checkbox_slider slider-round" />
                        </label>
                        <p class="capitalize">
                            show onsubscribes
                        </p>
                    </div>

                </div>

            </form>
        </div> 
        <div class="lg:col-span-3">
            <form>

                <div class="bg-white grid grid-cols-1 lg:grid-cols-2">
                    <div class="border-r border-l border-gray-300">
                        <div class="flex items-center px-4 py-3 border-b border-gray-300">
                            <button type="button" class="py-5 px-5 border border-gray-300 rounded hover:bg-gray-200">
                                
                                <div class="back_arrow_2 mx-0.5">
                                    <div class="simple_arrow" />
                                    <div class="extend_arrow" />
                                </div>

                            </button>
                            <label class="w-full px-2">
                                <input class="py-2.5 bg-gray-100 px-4 w-full h-12" type="search" placeholder="search">
                            </label>
                            <button type="button" class="py-6 px-7 rounded bg-indigo-400">
                                <icon></icon>
                            </button>
                        </div>
                        <div id="new_message" class="px-3 py-6 border-b border-gray-300 bg-gray-100 relative">
                            <p class="capitalize">  
                                new message...
                            </p>
                            <button type="button" class="absolute right-4 top-0 bottom-0">
                                <div @click="close_icon()" class="new-message-close-icon h-3.5 w-3.5">
                                    <div class="first_line w-px bg-gray-500" />
                                    <div class="second_line w-px bg-gray-500" />
                                </div>
                            </button>
                        </div>

                        
                        
                        <div v-for="id in checkbox__id" class="border-b border-gray-300 relative text-sm">
                            <label :name="id.id" class="flex items-start px-3 py-4 hover:bg-gray-200">

                                <Checkbox :checkbox_id="id" checkbox_size="w-4 h-4 rounded-sm border border-gray-300" class="mt-1" />

                                <!-- <input type="checkbox" class="mt-1.5 mb-auto"/> -->
                                <p class="capitalize  ml-2">
                                    <p class="font-semibold">{{id.message}}</p>
                                    <span class="block single_text_color__4 text-xs">
                                        hello back
                                    </span>
                                </p>
                                <p class="capitalize absolute right-3 top-4 text-xs single_text_color__4">
                                    {{id.data}}
                                </p>
                            </label>
                        </div>
                        
                    </div>

                    <div class="border-r border-l border-gray-300">
                        <div>

                            <div class="px-3 py-4 border-b border-gray-300">
                                <p class="capitalize font-semibold text-sm single_text_color__2">
                                    from:
                                </p>
                            </div>
                            <div class="flex items-center px-3 py-1.5 border-b border-gray-300">
                                <p class="w-14 capitalize font-semibold text-sm single_text_color__2">
                                    to:
                                </p>
                                <input class="capitalize py-2.5 px-4 w-full border border-gray-100" type="text" placeholder="search" />
                            </div>
                        
                        </div>
                        <div id="chat_scroll_end" class="w-full h-96 overflow-y-scroll px-4 pb-3">
                        
                         
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-left text-md py-4 pl-3">text test</p>
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-right text-md py-4 pr-3">text test</p>
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-left text-md py-4 pl-3">text test</p>
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-right text-md py-4 pr-3">text test</p>
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-left text-md py-4 pl-3">text test</p>
                            <p class="border border-gray-300 bg-gray-200 mt-5 text-right text-md py-4 pr-3">text test</p>

                        </div>
                        <div class="px-3 py-4 border-t border-gray-300">
                            <div>
                                <input placeholder="Type you message" class="py-3 px-5 border border-gray-300 w-full mb-3" type="text" />
                            </div>
                            <div class="flex justify-between items-center text-xs">
                                <div class="chat-icons">
                                    <icon>
                                    </icon>
                                    <icon>
                                    </icon>
                                    <icon>
                                    </icon>
                                    <icon>
                                    </icon>
                                </div>
                                <div class="flex items-center pr-2">
                                    <p class="single_text_color__4 mx-1">
                                        148 / 160
                                    </p>
                                    <p class="bg-gray-300 text-white uppercase rounded-full px-3 py-0.5 mx-1">
                                        sms
                                    </p>
                                    <button type="button" class="capitalize single_text_color text-sm mr-1 ml-2">
                                        send
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>

</div>
    

</template>

<script>

import SelectInput from '../../Shared/SelectInput'
import FileInput from '../../Shared/FileInput'
import Header from '@/Shared/header'
import Checkbox from '@/Shared/Checkbox'
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import CustomSelect from '@/Shared/CustomSelect'


export default {
  components: {
    SelectInput,
    FileInput,
    Header,
    Checkbox,
    Head,
    CustomSelect,
  },
  layout: Layout,

  methods: {

    close_icon(){

        var new_message = document.querySelector('#new_message');
        new_message.style.display = "none";
        
    },
  }
}
</script>