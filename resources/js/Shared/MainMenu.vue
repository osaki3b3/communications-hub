<template>
  <div id="main-menu">

    <div class="sidebar_option" :class="isUrl('') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Home</div>
      </Link>
    </div>


    <!-- inbox -->
    <div class="sidebar_option" :class="isUrl('inbox') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/inbox">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('inbox') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Inbox</div>
      </Link>
    </div>


    <!-- outbox -->
    <div class="sidebar_option" :class="isUrl('outbox') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/outbox">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('outbox') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Outbox</div>
      </Link>
    </div>


    <!-- campaigns -->
    <div class="sidebar_option" :class="isUrl('campaigns') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/campaigns">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('campaigns') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Campaigns</div>
      </Link>
    </div>


    <!-- contacts  -->
    <div class="sidebar_option" :class="isUrl('contacts') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/contacts">
        <!-- <icon name="users" class="mr-2 w-4 h-4" :class="isUrl('contacts') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('contacts') ? 'menu-normal-active bg-sky-400 font-bold' : 'menu-normal sidebar_text'">Contacts</div>
      </Link>
    </div>

    <!-- integrations -->
    <div class="sidebar_option" :class="isUrl('integrations') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/integrations">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('integrations') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Integrations</div>
      </Link>
    </div>

    <!-- media library -->
    <div class="sidebar_option" :class="isUrl('media-library') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/media-library">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('media-library') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Media Library</div>
      </Link>
    </div>


    <!-- media library -->
    <div class="sidebar_option" :class="isUrl('tools') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/tools">
        <!-- <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('tools') ? 'text-[#888] bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Tools</div>
      </Link>
    </div>


    <div class="sidebar_option" :class="isUrl('organizations') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/organizations">
        <!-- <icon name="office" class="mr-2 w-4 h-4" :class="isUrl('organizations') ? 'fill-[#1DA1F2]' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('organizations') ? 'menu-normal-hover bg-sky-400 font-bold' : 'menu-normal  sidebar_text'">Phone Numbers</div>
      </Link>
    </div>


    <div class="sidebar_option" :class="isUrl('reports') ? 'mb-2 pl-11 bg-gray-200 active' : 'mb-1 pl-11'">
      <Link class="group flex items-center pt-4 pb-2.5 text-xs " href="/reports">
        <!-- <icon name="printer" class="mr-2 w-4 h-4" :class="isUrl('reports') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-[#1DA1F2]'" /> -->
        <div class=" font-semibold" :class="isUrl('reports') ? 'menu-normal-hover bg-sky-400 font-bold' : 'menu-normal sidebar_text'">Reporting</div>
      </Link>
    </div>

    <div class="text-center absolute bottom-10 right-0 left-0">

      <a class="block font-bold uppercase text-xs mb-4" href="">
        call us now
      </a>

      <Link href="#" class="rounded-full buttons_color buttons_color_hover_2 text_xxs text-white py-2 px-5 font-semibold uppercase">
        upgrade now
      </Link>

    </div>

  </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'

export default {
  components: {
    Icon,
    Link,
  },
  methods: {
    isUrl(...urls) {
      let currentUrl = this.$page.url.substr(1)
      if (urls[0] === '') {
        return currentUrl === ''
      }
      return urls.filter((url) => currentUrl.startsWith(url)).length
    },
  },
}
</script>
