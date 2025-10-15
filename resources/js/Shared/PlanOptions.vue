<script setup>

    defineProps([ 'plan_title', 'plan_options', 'button_state', 'action_url' ])

</script>

<template>


    <form method="post" :action="action_url"> 
        <div class="bg-white px-12 pb-8 pt-10 cards_shadow flex flex-col justify-between" style="min-height: 617px;">
        
        
            <div>

                <p class="title-text-color uppercase text-sm mb-4 font-bold text-center lg:text-left">
                    {{ plan_title }}
                </p>
                <p class="text-sm mb-11 font-semibold text-center lg:text-left">
                    
                    <slot name="card-description" />

                </p>

                <div class="flex flex-col lg:pl-4">
                    
                    <template v-for="option in plan_options">
                    
                        <div class="flex items-center mb-4 mt-0.5 justify-center lg:justify-start">

                            <label class="flex items-center" :for="option['option_id']">

                                <checkbox :input_value="option['option_id']" :checkbox_id="option['option_id']" checkbox_size="w_4-5 h_4-5 rounded border border-gray-300 hover:bg-gray-200" />

                                <p class="text-sm capitalize ml-4 font-semibold">

                                    {{ option.option_name }}
                                
                                </p>
                            
                            </label>

                        </div>

                    </template>

                </div>

            </div>

            <template v-if="button_state == 'disabled'">

                <button type="button" class="cursor-default block max-w-full uppercase font-semibold bg-gray-300 py-3 w-56 mx-auto rounded-full text-white text-sm mb-2" disabled>
                    current plan
                </button>
            
            </template>
            <template v-else>
                
                <button type="button" class="block max-w-full uppercase font-semibold buttons_color py-3 w-56 mx-auto rounded-full text-white text-sm mb-2 buttons_color_hover_2">
                    upgrate plan
                </button>
            
            </template>
        

        </div>
    </form>


</template>

<script>

import Checkbox from '@/Shared/Checkbox'

    export default {

        components: {

            Checkbox,

        } 
    }

</script>