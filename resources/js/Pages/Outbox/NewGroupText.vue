<script setup>

</script>

<template>

    <div>
    
        <Header site_title="outbox" />

        <div class="mt-5 py-5 px-7 bg-white relative">
            <form method="post">
            
                <div class="grid grid-cols-1 md:grid-cols-7 gap-5">
                    <div class="col-span-4">
                        
                        <div>
                            <label class="block uppercase font-bold text-sm single_text_color__6">
                                to
                            </label>
                            
                            <select class="w-full p-3 border border-gray-300 my-2">
                                <option>
                                    option1
                                </option>
                            </select>
                            <p class="text-sm">
                                Message recipients and replies only visible to you
                            </p>
                        </div>
                        <div class="mt-7">
                            <label class="uppercase text-sm single_text_color__6 font-bold">
                                message
                            </label>
                            <div class="w-full my-2">
                                <p class="w-full border border_color_gray px-4 py-3.5 uppercase">
                                    vnd
                                </p>
                                <textarea class="w-full border-r border-l border_color_gray py-4 px-4" type="textarea" maxlength="160" rows="5" placeholder="Type your message"></textarea>
                                <div class="border border-t-0 border_color_gray flex p-3 items-center justify-between -mt-1">
                                
                                    <div class="flex pl-1">
                                        <p>
                                            ?
                                        </p>
                                        <p>
                                            ?
                                        </p>
                                        <p>
                                            ?
                                        </p>
                                        <p>
                                            ?
                                        </p>
                                        <p>
                                            ?
                                        </p>
                                        <p>
                                            ?
                                        </p>
                                    </div>
                                    <div class="flex text-xs">
                                        <p class=" mx-1">
                                            130 / 160
                                        </p>
                                        <p class="sms_bg-color text-gray-100 uppercase rounded-full px-2.5 py-01 ml-1">
                                            sms
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="mt-7">
                            <div class="flex justify-between">
                                <label class="uppercase text_xm single_text_color__6 font-bold">
                                    attach a free image
                                </label>
                                <button class="uppercase text_xm single_text_color__5 font-bold">
                                    search free images
                                </button>
                            </div>
                            <div class="my-2 py-2 px-1  border border-gray-200 flex overflow-x-hidden">
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                                <div class="border border-gray-200 p-1 mx-1">
                                    <div class="boxes_background new_group_boxes_width">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mt-7">
                            <button class="text_practices__button single_text_color__7">
                                <p class="font-bold uppercase text-sm">
                                    texting best practices
                                </p>
                            </button>
                            <div class="background_color_1 border border-gray-300 my-2 px-20 py-6 mb-2">
                                <div class="mb-5">
                                    <p class="text-sm font-bold">
                                        Include a subject line 
                                    </p>
                                    <p class="text-sm my-1">
                                        Message that include a subject line can increase <Link class="border-dashed border-black border-b" href="#">click-through rates</Link> up to 30%.
                                    </p>
                                </div>
                                <div class="mb-5">
                                    <p class="text-sm font-bold">
                                        Track engagement with a link 
                                    </p>
                                    <p class="text-sm my-1">
                                        Add your website's or zoom event in to our link shortener <icon></icon> and track <Link class="border-dashed border-black border-b" href="#">conversion rate.</Link>
                                    </p>
                                </div>
                                <div class="mb-5">
                                    <p class="text-sm font-bold">
                                        Keep it short 
                                    </p>
                                    <p class="text-sm my-1">
                                        Message with 20-30 words avarage <Link class="border-dashed border-black border-b" href="#">click through rates</Link> of about 30% vs. 15% for longer messages.
                                    </p>
                                </div>
                                <div class="">
                                    <p class="text-sm font-bold">
                                        Make it personal 
                                    </p>
                                    <p class="text-sm my-1">
                                        People are 25% more likely to respond to personalized messages. If you have names in your contact list, click the {...} icon to insert them into you messages.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="mt-7">
                            <p class="uppercase font-bold text-sm block">
                                schedule
                            </p>
                            <div class="my-2 pl-2 border-b border-gray-300 pb-5">
                                
                                <label class="my-2 block custom__radio capitalize text-sm" for="send_now">
                                    <input id="send_now" type="radio" name="message_send_schedule" />
                                    <span class="radio_custom_marker" />
                                    <span>
                                        send now
                                    </span>
                                </label>

                                <label class="my-2 block custom__radio capitalize text-sm" for="schedule_for_later">
                                    <input v-on:click="schedule_for_later()" id="schedule_for_later" type="radio" name="message_send_schedule" />
                                    <span class="radio_custom_marker" />
                                    <span>
                                        schedule for later
                                    </span>
                                </label>

                                <div class="schedule_for_later_calendar absolute px-10 pt-14 pb-20 hidden">

                                    <p class="text-sm font-bold">
                                        Schedulefor Later
                                    </p>
                                    <div class="text-center px-24 pt-20">
                                    
                                        <div class="calendar text-xs">
                                            <div class="month flex justify-between mb-5 p-2">
                                                <p class="font-bold">
                                                    July 2022
                                                </p>
                                                <div class="calendar_month_arrows">
                                                    <button type="button" class="calendar_prev" />
                                                    <button type="button" class="calendar_next" />
                                                </div>
                                            </div>
                                            <div class="days text-xs font-semibold">
                                                <span>Mo</span>
                                                <span>Tu</span>
                                                <span>We</span>
                                                <span>Th</span>
                                                <span>Fr</span>
                                                <span>Sa</span>
                                                <span>Su</span>
                                            </div>
                                            <div class="dates">
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>1</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>2</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>3</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>4</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>5</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>6</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>7</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>8</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>9</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>10</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>11</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>12</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>13</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>14</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>15</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>16</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>17</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>18</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>19</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>20</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>21</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>22</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>23</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>24</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>25</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>26</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>27</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>28</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>29</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>30</time>
                                                </button>
                                                <button class=" text-xs mt-1 h-7 w-7" type="button">
                                                    <time>31</time>
                                                </button>
                                            </div>
                                        </div>

                                        <div class="bg-gray-100 p-3 text-left mt-10">
                                            <div class="text-xs single_text_color__6 flex">
                                                <p class="mr-2">
                                                    ?
                                                </p>
                                                <p>
                                                    10:00 AM
                                                </p>
                                            </div>
                                            <div class="mt-2">
                                                <p class="text-xs capitalize font-bold">
                                                    message title
                                                </p>
                                            </div>
                                        </div>

                                        <button v-on:click="calendar_submit()" type="button" class="uppercase buttons_color w-36 py-1 block text-white text-xs mt-28 rounded-full mx-auto">
                                            schedule
                                        </button>

                                    </div>

                                </div>

                                <label class="my-2 block custom__radio capitalize text-sm" for="schedule_recurring">
                                    <input id="schedule_recurring" type="radio" name="message_send_schedule" />
                                    <span class="radio_custom_marker" />
                                    <span>
                                        schedule recurring
                                    </span>
                                </label>
                            
                            </div>
                        </div>
                        <div class="pt-5 pb-2 flex justify-between">
                            <button class="uppercase single_text_color__5 text-sm font-semibold">
                                cancel
                            </button>
                            <button class="py-3 px-4 text-sm uppercase font-semibold bg-gray-200 text-gray-400">
                                review message
                            </button>
                        </div>

                    </div>
                    <div>
                    
                    </div>
                </div>
            
            </form>
        </div>
    
    </div>

</template>

<script>

import SelectInput from '../../Shared/SelectInput'
import FileInput from '../../Shared/FileInput'
import Header from '@/Shared/header'
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'


export default {
  components: {
    SelectInput,
    FileInput,
    Header,
    Head,
    Link,
  },
  layout: Layout,
  methods: {
    texting_practices() {



    },
    schedule_for_later() {

        var radio_schedule_later = document.querySelector('#schedule_for_later');
        var radio_schedule_later = document.querySelector('.schedule_for_later_calendar');

        radio_schedule_later.style.display = "block";

    },
    calendar_submit() {

        var radio_schedule_later = document.querySelector('.schedule_for_later_calendar');

        radio_schedule_later.style.display = "none";

    },
  },
}
</script>