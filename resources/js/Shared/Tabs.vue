<script setup>

    defineProps(
        ['tabs_options']
    )

</script>

<template>

    <div class="grid grid-cols-1 lg:grid-cols-2 gray-line mb-5 mt-2 pb-5 lg:pb-0">

        <div class="text-center mb-5 lg:text-left lg:mb-0">

            <template v-for="(tab_option, index) in tabs_options" key="index">
            
                <button :class="tab_option, index ? 0 : 'tab_selected'" class="tab_header text-sm mr-5 uppercase single_text_color__2 hover_font_semibold" v-on:click="contact_tabs(event, tab_option)">
                    {{ tab_option }}
                    <div />
                </button>

            </template>
            
        </div>

        <slot name="tab-head-button" />

    </div>

    <slot name="tab-content" />


</template>

<script>
    export default {
        methods: {
            contact_tabs(evt, tabName){

                var i, tabs_content, tab_header;
                var tab_header = document.getElementsByClassName('tab_header');
                var tabs_content = document.getElementsByClassName('tabs_content');
                var head_button = document.getElementsByClassName('head_button');

                
                
                for (i = 0; i < tabs_content.length; i++) {
                    tabs_content[i].style.display = "none";
                    tab_header[i].classList.remove('tab_selected');
                }
                
                for (i = 0; i < head_button.length; i++) {
                    head_button[i].style.display = "none";

                    if (head_button[i].classList.contains(tabName)) {

                        head_button[i].style.display = "block";
                    
                    }
                }
                

                document.getElementById(tabName).style.display = "block";
                event.target.classList.add('tab_selected');

            },
        },
    }
</script>