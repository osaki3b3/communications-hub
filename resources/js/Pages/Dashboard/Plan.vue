<script setup>

    import { ref } from 'vue'
    
    const plan_options_1 = ref([ { option_name: 'description / advantage', option_id: 'first_id' }, { option_name: 'description / advantage', option_id: 'second_id' }, { option_name: 'description / advantage', option_id: 'third_id' }, { option_name: 'description / advantage', option_id: 'fourth_id' }, { option_name: 'description / advantage', option_id: 'fiveth_id' } ]);
    const plan_options_2 = ref([ { option_name: 'description / advantage', option_id: 'id_1' }, { option_name: 'description / advantage', option_id: 'id_2' }, { option_name: 'description / advantage', option_id: 'id_3' }, { option_name: 'description / advantage', option_id: 'id_4' }, { option_name: 'description / advantage', option_id: 'id_5' }, { option_name: 'description / advantage', option_id: 'id_6' }, { option_name: 'description / advantage', option_id: 'id_7' } ]);
    const plan_options_3 = ref([ { option_name: 'description / advantage', option_id: 'text_1' }, { option_name: 'description / advantage', option_id: 'text_2' }, { option_name: 'description / advantage', option_id: 'text_3' }, { option_name: 'description / advantage', option_id: 'text_4' }, { option_name: 'description / advantage', option_id: 'text_5' }, { option_name: 'description / advantage', option_id: 'text_6' }, { option_name: 'description / advantage', option_id: 'text_7' }, { option_name: 'description / advantage', option_id: 'text_8' }, { option_name: 'description / advantage', option_id: 'text_9' } ]);

    const plan_option_id = ref ([ '', ])

</script>

<template>

    <div>
    

        <Header site_title="profile" />

        <div class="mt-5">
            <p class="text-xs font-bold uppercase mb-2">
                contacts
            </p>
            <div class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 gap-5">

                <plan-options plan_title="plan" :plan_options="plan_options_1" button_state="disabled">
                
                    <template #card-description>
                            View and edit your list of subscribed contacts with just a few clicks
                    </template>
                
                </plan-options>

                <plan-options plan_title="plan" :plan_options="plan_options_2">
                
                    <template #card-description>
                            View and edit your list of subscribed contacts with just a few clicks
                    </template>
                
                </plan-options>

                <plan-options plan_title="plan" :plan_options="plan_options_3">
                
                    <template #card-description>
                            View and edit your list of subscribed contacts with just a few clicks
                    </template>
                
                </plan-options>


            </div>
        </div>
    
    
    </div>

</template>

<script>

    import Header from '../../Shared/header'
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import Layout from '@/Shared/Layout'
    import PlanOptions from '@/Shared/PlanOptions'

    export default {
        components: {
            Header,
            Head,
            Link,
            PlanOptions,
        },
        layout: Layout,
    }

</script>