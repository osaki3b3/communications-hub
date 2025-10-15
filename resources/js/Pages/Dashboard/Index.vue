<script setup>
  import { ref } from 'vue'

  const array_texts = ref([ 'unread messages', 'sent message', 'contacts subscribed', 'contacts unsuscribed' ]);
  
  const options_desciptions = ref([ { title : '', text: 'z' }, { title : 'Start 1-On-1 Chat', text: 'Use A Textable Phone Number To Start A 1-On-1 Chat With A Contact' }, { title : 'Create A Drip Campaign', text: 'Automate Messages When Subscribers Join Your Contact Group' } ]);
  const options_desciptions_2 = ref([ { title : 'Manage Contacts', text: 'View And Edit Your List Of Subscribed Contacts With Just A Few Clicks' }, { title : 'Manage Kewywords', text: 'Use Keywords To Allow People To Easily Subscribe To Your Texts' }, { title : 'Manage Sign Up Forms', text: 'Share Or Embed A Form For Potential Contacts To Complete To Opt-In To Your Messaging List' } ]);


</script>

<template>

  <Header  site_title="dashboard" />


  <div class="mt-10 mb-14">
    <since-last-visit :card_content="array_texts" :card_count="contacts['data']" />
  </div>

  <DescriptiveCard :text_size="'dashboard_cards_text'" :card_content="options_desciptions" section_title="messaging" class="mb-16" />

  <DescriptiveCard :text_size="'dashboard_cards_text'" :card_content="options_desciptions_2" section_title="contacts" />


</template>

<script>
import Header from '../../Shared/header'
import { Head } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import SinceLastVisit from '@/Shared/SinceLastVisit'
import DescriptiveCard from '@/Shared/DescriptiveCard'

export default {
  components: {
    Header,
    Head,
    SinceLastVisit,
    DescriptiveCard,
  },
  layout: Layout,
  props: {
    someLocalData : String,
    otherData : String,
    contacts: Object,
  },
  data() {
    return {
      propsToLocal : this.otherData,
    }
  },
}
</script>
