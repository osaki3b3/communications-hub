<script setup>

  import { ref } from 'vue'

  const groups_table = ref([ { name: 'clients', contacts: '27', description: 'description_1' }, { name: 'providers', contacts: '9', description: 'description_2' }, { name: 'partners', contacts: '3', description: 'description_3' }, { name: 'general', contacts: '54', description: 'description_4' } ])

</script>

<template>
  <div>
    <Head title="Contacts" />
    <Header site_title="contacts" />

    <div class="bg-white p-7 pt-2 pb-4 mt-6">

      <!-- TABS BUTTONS -->
      
      <Tabs :tabs_options="['contacts', 'groups', 'sign-up forms']">
      
        <template #tab-head-button>
          
          <div class="contacts head_button text-right">
            <Link class="buttons_color text-white rounded-full px-6 pt-1.5 pb-1.5 text-center font-semibold text_xxs uppercase" href="contacts/new-contact">
              add new contact
            </Link>
          </div>
          
          <div class="groups head_button text-right hidden">
            <Link class="buttons_color text-white rounded-full px-6 pt-1.5 pb-1.5 text-center font-semibold text_xxs uppercase" href="contacts/new-groups">
              create new group
            </Link>
          </div>

        </template>
        
        <template #tab-content>
          
          <div id="contacts" class="tab_body tabs_content">
        
            <div class="grid grid-cols-10">

              <label class="col-span-9 flex pl-5">
                <button class="rounded-l-full py-3 pl-5 pr-3 font-md bg-gray-100">
                  <!-- <icon /> -->
                  <p>?</p>
                </button>
                <input class=" bg-gray-100 w-4/5 py-3 pr-8 font-md xl:w-11/12" type="text" placeholder="Search Contacts" />
                <dropdown class="" placement="bottom-end">
                  <template #default>
                    <div class="group flex bg-gray-100 py-3 px-6 font-md h-full rounded-r-full items-center cursor-pointer select-none hover:border-8">
                      <div class="dropdown_full_arrow border_7 arrow_color_dark-gray" />
                      <!-- <icon class="w-5 h-5 fill-gray-700 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" /> -->
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">My Profile</Link>
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                      <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                    </div>
                  </template>
                </dropdown>
              </label>

              <div class="flex justify-center items-center">
                <button type="button">
                  <icon />
                  <p>
                    ? Filters
                  </p>
                </button>
              </div>

            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 xl:flex mt-4 mb-7 py-3 px-4 shadow-md border border-gray-300">

              <div class="flex justify-between items-center w-full">
                <p class="ml-2 mr-1 uppercase text-xs font-semibold w-20 xl:w-auto">
                  Sources
                </p>
                <dropdown class="w-full mb-3 mx-1 pr-2 px-4 py-3 border-2 border-gray-400 xl:mb-0" placement="bottom-end">
                  <template #default>
                    <div class="group flex items-center cursor-pointer select-none">
                      <span class="text-md mr-5 capitalize">
                        all sources
                      </span>
                      <icon class="ml-auto w-4 h-4 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">My Profile</Link>
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                      <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                    </div>
                  </template>
                </dropdown>
              </div>

              <div class="flex justify-between items-center ml-2.5 w-full">
                <p class="ml-2 mr-1 uppercase text-xs font-semibold w-20 xl:w-auto">
                  groups
                </p>
                <dropdown class="w-full mb-3 mx-1 pr-2 px-4 py-3 border-2 border-gray-400 xl:mb-0" placement="bottom-end">
                  <template #default>
                    <div class="group flex items-center cursor-pointer select-none">
                      <span class="text-md mr-5 capitalize">
                        all groups
                      </span>
                      <icon class="ml-auto w-4 h-4 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">My Profile</Link>
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                      <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                    </div>
                  </template>
                </dropdown>
              </div>

              <div class="flex justify-between items-center ml-2.5 w-full">
                <p class="ml-2 mr-1 uppercase text-xs font-semibold w-20 xl:w-auto">
                  status
                </p>
                <dropdown class="w-full mb-3 mx-1 pr-2 px-4 py-3 border-2 border-gray-400 xl:mb-0" placement="bottom-end">
                  <template #default>
                    <div class="group flex items-center cursor-pointer select-none">
                      <span class="text-md mr-5 capitalize">
                        opted-in
                      </span>
                      <icon class="ml-auto w-4 h-4 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">My Profile</Link>
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                      <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                    </div>
                  </template>
                </dropdown>
              </div>

              <div class="flex justify-between items-center ml-2.5 w-full">
                <p class="ml-2 mr-1 uppercase text-xs font-semibold w-20 xl:w-auto">
                  blocked
                </p>
                <dropdown class="w-full mb-3 mx-1 pr-2 px-4 py-3 border-2 border-gray-400 xl:mb-0" placement="bottom-end">
                  <template #default>
                    <div class="group flex items-center cursor-pointer select-none">
                      <span class="text-md pr-1 w-2/3 text-left mr-1 capitalize truncate">
                        not blocked
                      </span>
                      <icon class="ml-auto w-4 h-4 fill-gray-300 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">My Profile</Link>
                      <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">Manage Users</Link>
                      <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">Logout</Link>
                    </div>
                  </template>
                </dropdown>
              </div>

              <div class="flex justify-end items-start pt-2.5 pr-4 contacts_clear_filters">
                  <button type="button" class="single_text_color__9 text_sm font-semibold flex items-center">
                      Clear Filters
                  </button>
              </div>

            </div>
            <div class="bg-white overflow-x-auto tab-body">
              <table class="w-full whitespace-nowrap">
                <tr class="border-t border-b text-left font-bold">
                  <th class="text-indigo-400 pb-3.5 pt-4 pl-2 w-4">
                    <!-- <input class="w-4 h-4" type="checkbox" v-on:click="check_all_checkboxes()"> -->
                    <checkbox checkbox_id="chacked_all" checkbox_size="w-4 h-4 border border-gray-400 rounded-sm" />
                  </th>
                  <th class="single_text_color__5 pb-4 pt-4 px-4 w-40">Phone Number</th>
                  <th class="single_text_color__5 pb-4 pt-4 px-4 w-36">First Name</th>
                  <th class="single_text_color__5 pb-4 pt-4 px-4 w-36">Last Name</th>
                  <th class="single_text_color__6 pb-4 pt-4 px-4 w-40">Email</th>
                  <th class="single_text_color__6 pb-4 pt-4 pl-4 pr-3 w-20">Groups</th>
                  <th class="single_text_color__6 pb-4 pt-4 px-4 w-40">Source</th>
                  <th class="pb-4 pt-4 px-4">

                    <dropdown class="" placement="bottom-end">
                      <template #default>
                        <div class="group flex items-center cursor-pointer select-none">
                          <p class="single_text_color__5 mr-2">
                            Added
                          </p>
                          <icon class="w-5 h-5 fill-gray-700 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
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
                <tr v-for="contact in contacts.data" :key="contact.id" class="border-b hover:bg-gray-100 focus-within:bg-gray-100">
                  <td class=" pl-2">
                    <!-- <input class="mt-1 w-4 h-4 check_boxes" name="contacs_select" type="checkbox"> -->
                    <checkbox :checkbox_id="contact[id]" checkbox_size="w-4 h-4 border border-gray-400 rounded-sm" />
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      {{ contact.phone }}
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      <div v-if="contact.organization">
                        {{ contact.name }}
                      </div>
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      {{ contact.name }}
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      {{ contact.city }}
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      6
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="text-sm px-4 py-4 block" :href="`/contacts/${contact.id}/edit`">
                      <div v-if="contact.organization">
                        {{ contact.name }}
                      </div>
                    </Link>
                  </td>
                  <!-- <td class="border-t">
                    <Link class="flex items-center text-sm px-4 py-4" :href="`/contacts/${contact.id}/edit`" tabindex="-1">
                      {{ contact.phone }}
                    </Link>
                  </td> -->
                  <td class="">
                    <Link class="flex items-center text-sm px-4 py-4" :href="`/contacts/${contact.id}/edit`">
                      {{ contact.phone }}
                    </Link>
                  </td>
                </tr>
                <tr v-if="contacts.data.length === 0">
                  <td class="px-6 py-4 " colspan="4">No contacts found.</td>
                </tr>
              </table>

            </div>

            <div class="mt-8">

              <div class="flex flex-col md:flex-row  justify-between pl-5">

                <div class="flex items-start text-sm">

                  <button class="pagination_prev">
                    <div class="pagination_prev_icon border_color_gray_1 border-r-2 border-b-2 w-2 h-2" />
                    <p class="ml-1 single_text_color__11">
                      prev
                    </p>
                  </button>
                  <label>
                    
                    <p class="pagination_bg_color_1 single_text_color__2 px-2.5 py-2 rounded font-bold">
                      1-2 of 2
                    </p>

                  </label>
                  <button class="pagination_next">
                    <p class="mr-1 single_text_color__11">
                      next
                    </p>
                    <div class="pagination_next_icon border_color_gray_1 border-r-2 border-b-2 -mb-0.5 w-2 h-2" />
                  </button>

                </div>
                <div class="flex md:mr-1 mt-16 md:mt-0 items-start text-sm">

                  <div class="mr-2 relative h-6">

                    <select class="pagination-select pt-1.5 pb-2 pl-1 pr-2.5 rounded font-bold">
                      <option>
                        10
                      </option>
                    </select>

                  </div>
                  <label class="mt-2.5 text-sm">
                    Rows per page
                  </label>

                </div>

              </div>

              <div class="flex flex-col md:items-center justify-between md:flex-row pt-12 pb-2">
                <div class="flex flex-col sm:flex-row">
                  <div class="sm:pl-2 sm:mr-4">

                    <a class="text-md single_text_color__9 2xl:text-md capitalize" href="#">custom contact field</a>
                      
                  </div>

                  <div class="breadcrum_pagination"></div>

                  <div class=" sm:mx-4">

                    <a class="text-md single_text_color__9 2xl:text-md capitalize" href="#">manage blocked contacts</a>

                  </div>

                  <div class="breadcrum_pagination"></div>

                  <div class="sm:ml-4">

                    <a class="text-md single_text_color__9 2xl:text-md capitalize" href="#">bulk opt-out contacts</a>

                  </div>
                </div>
                
                <div class="text-sm single_text_color__9">
                  <Link>
                    <icon>
                      ?
                    </icon>
                    <p>
                      Export Contacts
                    </p>
                  </Link>
                </div>
              </div>

            </div>

          </div>
          <div id="groups" class="hidden tabs_content pt-8">

            <div class="bg-white overflow-x-auto tab-body">
              <table class="w-full whitespace-nowrap">
                <tr class="border-t border-b text-left">
                
                  <th class="text-indigo-400 pb-3.5 pt-4 pl-2 w-5">
                    <checkbox :checkbox_id="'groups_check_all'" checkbox_size="w-4 h-4 border border-gray-400 rounded-sm" />
                  </th>
                  <th class="single_text_color pb-4 pt-4 px-4 font-normal">Group Name</th>
                  <th class="single_text_color pb-4 pt-4 pr-10 px-7 font-normal w-28">Contacts</th>
                  <th class="single_text_color__10 pb-4 pt-4 pl-4 pr-7 font-normal w-96">Description</th>
                  <th class="pb-4 pt-4 px-4 single_text_color__10 text-center font-normal w-10">Send</th>
                  <th class="pb-4 pt-4 px-4 single_text_color__10 text-center font-normal w-10">Edit</th>

                </tr>
                <tr v-for="group in groups_table" class="border-b hover:bg-gray-100 focus-within:bg-gray-100">

                  <td class=" pl-2">
                    <checkbox :checkbox_id="group[name]" checkbox_size="w-4 h-4 border border-gray-400 rounded-sm" />
                  </td>
                  <td class="p-0">
                    <Link class="px-4 py-4 block capitalize" href="#" tabindex="-1">
                      {{ group.name }}
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="px-4 py-4 block" href="#" tabindex="-1">
                      {{ group.contacts }}
                    </Link>
                  </td>
                  <td class="p-0">
                    <Link class="px-4 py-4 block" href="#" tabindex="-1">
                      {{ group.description }}
                    </Link>
                  </td>
                  <td class="px-4 py-4">
                    <Link class="flex items-center " href="#" tabindex="-1">
                      <div class="w-5 h-5 bg-black mx-auto" >

                      </div>
                    </Link>
                  </td>
                  <td class="px-4 py-4">
                    <Link href="#" tabindex="-1">
                      <div class="w-5 h-5 bg-black mx-auto" >

                      </div>
                    </Link>
                  </td>
                  
                </tr>
                <tr v-if="contacts.data.length === 0">

                  <td class="px-6 py-4 " colspan="4">No contacts found.</td>

                </tr>
              </table>
            </div>

            <div class="mt-8">

              <div class="flex flex-col md:flex-row  justify-between pl-3">

                <div class="flex items-start">

                  <button class="pagination_prev">
                  <p>
                    prev
                  </p>
                  </button>
                  <label class="relative h-26">
                    
                    <p class="page_number">
                      1-4 of 4
                    </p>

                    <div class="pagination_line" />

                  </label>
                  <button class="pagination_next">
                    <p>
                      next
                    </p>
                  </button>

                </div>
                <div class="flex md:mr-1 mt-16 md:mt-0 items-start">

                  <div class="mr-2 relative h-26">

                    <select class="pagination-select">
                      <option>
                        10
                      </option>
                    </select>
                    <div class="pagination_line" />

                  </div>
                  <label class="mt-2.5">
                    Rows per page
                  </label>

                </div>

              </div>

              <div class="flex flex-col md:items-center justify-between md:flex-row single_text_color">
                <div class="mt-20 flex flex-col sm:flex-row">
                  <div class=" sm:mx-3">

                    <a class="text-xs 2xl:text-sm capitalize" href="#">custom contact field</a>
                      
                  </div>

                  <div class="breadcrum_pagination"></div>

                  <div class=" sm:mx-3">

                    <a class="text-xs 2xl:text-sm capitalize" href="#">manage blocked contacts</a>

                  </div>

                  <div class="breadcrum_pagination"></div>

                  <div class="sm:ml-3">

                    <a class="text-xs 2xl:text-sm capitalize" href="#">bulk opt-out contacts</a>

                  </div>
                </div>
                
                <div class="mt-10 md:mt-20 text-xs">
                  <Link>
                    <icon>
                      ?
                    </icon>
                    <p>
                      Export Contacts
                    </p>
                  </Link>
                </div>
              </div>

            </div>

          </div>
          <div :id="'sign-up forms'" class="hidden tabs_content">

            <div class="max-w-2xl px-5 mx-auto text-center my-10">
              <h2 class="text-3xl mb-5 single_text_color__2">
                Grow your contact list with Sign-Up Forms
              </h2>
              <p class="text-md single_text_color__2">
                Sign-Up forms allow you to share or embed a form for potential contacts to complete in order to opt-in to your messaging list.
              </p>
              <Link class="mt-10 block" href="/">
                <logo class="mx-auto fill-white" width="230" />
              </Link>

              <Link class="mt-5 mb-20 inline-block font-bold px-10 py-4 rounded-full text-white uppercase new-sing-up" href="contacts/new-sign-up">
                new sing-up form
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
import Icon from '@/Shared/Icon'
import pickBy from 'lodash/pickBy'
import Layout from '@/Shared/Layout'
import throttle from 'lodash/throttle'
import mapValues from 'lodash/mapValues'
import Pagination from '@/Shared/Pagination'
import SearchFilter from '@/Shared/SearchFilter'
import Dropdown from '@/Shared/Dropdown'
import Logo from '@/Shared/Logo'
import Tabs from '@/Shared/Tabs'
import Checkbox from '@/Shared/Checkbox'

export default {
  components: {
    Header,
    Head,
    Icon,
    Link,
    Pagination,
    SearchFilter,
    Dropdown,
    Logo,
    Tabs,
    Checkbox,
  },
  layout: Layout,
  props: {
    filters: Object,
    contacts: Object,
    auth: Object,
  },
  data() {
    return {
      form: {
        search: this.filters.search,
        trashed: this.filters.trashed,
      },
    }
  },
  watch: {
    form: {
      deep: true,
      handler: throttle(function () {
        this.$inertia.get('/contacts', pickBy(this.form), { preserveState: true })
      }, 150),
    },
  },
  methods: {
    reset() {
      this.form = mapValues(this.form, () => null)
    },
    check_all_checkboxes() {

      // var check_boxes = document.getElementsByClassName('check_boxes')
      var check_boxes = document.querySelector('.check_boxes')

      console.log(check_boxes);

      if (this.checked) {

        check_boxes.each(function () {
          this.checked = true;
        });
        
      } else {

        check_boxes.each(function () {
          this.checked = false;
        });

      }

    }
  },
}

</script>

