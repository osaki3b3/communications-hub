<template>
  <div>
    <div id="dropdown" />
    <div class="md:flex md:flex-col">
      <div class="md:flex md:flex-col md:h-screen">
        <div class="md:flex md:flex-shrink-0">

          <div class="flex items-center justify-between bg-white md:w-64 border-r border-gray-200 md:flex-shrink-0 px-4 pt-2.5 pb-3">
            <Link class="mt-1" href="/">
              <logo width="145" />
            </Link>

            <dropdown class="" placement="bottom-end">
              <template #default>
                <div class="plus_icon buttons_color_hover_2">
                  <div class="plus_icon_first" />
                  <div class="plus_icon_second" />
                </div>
              </template>
              <template #dropdown>
                <div class="mt-2 text-sm bg-white shadow-md w-80 px-3 py-4 border border-gray-300" style="width: 340px;">
                  <p class="capitalize text-sm mt-2 mb-4 font-bold">
                    create
                  </p>
                  <Link class="block my-1 font-semibold px-3 py-3 capitalize hover:text-white buttons_color_hover" href="#">billing</Link>
                  <Link class="block my-1 font-semibold px-3 py-3 hover:text-white buttons_color_hover" href="#">1-on-1 Chat</Link>
                  <Link class="block my-1 font-semibold px-3 py-3 capitalize hover:text-white buttons_color_hover" href="#">keyword</Link>
                  <Link class="block my-1 font-semibold px-3 py-3 capitalize hover:text-white buttons_color_hover" href="#">drip campaign</Link>
                  <Link class="block my-1 font-semibold px-3 py-3 capitalize hover:text-white buttons_color_hover" href="#">sign-up form</Link>
                </div>
              </template>
            </dropdown>

            <dropdown class="md:hidden" placement="bottom-end">
              <template #default>
                <svg class="w-6 h-6 fill-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" /></svg>
              </template>
              <template #dropdown>
                <div class="mt-2 px-8 py-4 bg-white rounded shadow-lg">
                  <main-menu />
                </div>
              </template>
            </dropdown>

          </div>

          <div class="grid grid-cols-1 lg:grid-cols-2 px-4 pt-2.5 pb-3 w-full bg-white border-b md:pl-10 md:pr-7">
            <div class="flex justify-between sm:block mt-1">
              
              <button type="button" class="mr-4 py-1.5 px-4 rounded-full buttons_color buttons_color_hover_2">
                <p class="uppercase text-white font-bold tracking-wide text-xs">Upgrade Now</p>
              </button>

              <a class="font-bold uppercase text-xs" href="">
                call us now
              </a>

            </div>
            <div class="mt-5 flex justify-end items-center flex-col lg:mt-0 sm:flex-row">

              <div class="w-full xl:w-auto">

                <label class="flex justify-end mb-3 sm:mb-0 bg-gray-100 hover:bg-gray-200 rounded-full" name="">
                  <input class="bg-transparent w-full h-8 pb-0.5 pl-4 text_xxs placeholder-black lg:w-56" name="" placeholder="Search..." />
                  <div class="pb-0.5 pt-2.5 pr-4">
                    <img src="/img/search_icon.png" class="h-3.5 w-3.5"/>
                  </div>
                </label>

              </div>

              <div class="flex">
                <Link class="ml-8 mr-2 w-2 h-auto">
                  <img src="/img/header_question_icon.png" class="" />
                  <!-- <img src="img/header_question_icon.png" class="" /> -->
                </Link>
                <Link class="mr-10 ml-3 w-3 h-auto">
                  <img src="/img/campaign.png" class="" />
                </Link>
              </div>

              <div class="flex">
                <div class="rounded-full bg-gray-300 h-7 w-7 my-auto mr-4" /> 
                <dropdown class="my-1" placement="bottom-end">
                  <template #default>
                    <div class="group flex items-center cursor-pointer select-none">
                      <div class="mr-4 text-gray-700 group-hover:text-indigo-600 focus:text-indigo-600 whitespace-nowrap">
                        <span class="text-xs">{{ auth.user.first_name }}</span>
                        <span class="hidden md:inline text-xs">&nbsp;{{ auth.user.last_name }}</span>
                      </div>
                      <icon class="w-3.5 h-3.5 fill-gray-700 group-hover:fill-indigo-600 focus:fill-indigo-600" name="cheveron-down" />
                    </div>
                  </template>
                  <template #dropdown>
                    <div class="mt-2 text-sm bg-white border border-gray-300 shadow-md w-72 px-3 py-4">
                      <!-- <Link class="block px-6 py-2 capitalize hover:text-white hover:bg-indigo-500" href="/users">Manage Users</Link> -->
                      
                      <p class="capitalize text-sm mt-2 mb-4 font-bold">
                        your account
                      </p>
                      
                      <div class="bg-gray-100 py-1 px-4 mb-3 pl-3">

                        <div class="flex justify-between my-4">
                          <p class="text-xs single_text_color__6">
                            Phone number registered
                          </p>
                          <Link class="text-xs title-text-color capitalize" href="#"> 
                            upgrade
                          </Link>
                        </div>
                        <div class="flex justify-between my-4">
                          <p class="text-xs single_text_color__6">
                            Use Credits
                          </p>
                          <Link class="text-xs title-text-color capitalize" href="#"> 
                            buy credits
                          </Link>
                        </div>
                        <div class="flex justify-between my-4">
                          <p class="text-xs single_text_color__6">
                            Plan Name
                          </p>
                          <Link class="text-xs title-text-color capitalize" href="/plan"> 
                            manage
                          </Link>
                        </div>
                      
                      </div>
                      <Link class="block my-1 px-3 py-2 capitalize hover:text-white buttons_color_hover" href="/users">billing</Link>
                      <Link class="block my-1 px-3 py-2 capitalize hover:text-white buttons_color_hover" href="#">settings</Link>
                      <Link class="block my-1 px-3 py-2 capitalize hover:text-white buttons_color_hover" :href="`/${auth.user.id}/profile`">my profile</Link>
                      <Link class="block my-1 px-3 py-2 capitalize hover:text-white buttons_color_hover" href="/logout" method="delete">log out</Link>
                    </div>
                  </template>
                </dropdown>
              </div>

            </div>
          </div>
          
        </div>
        <div class="md:flex md:flex-grow">
          <main-menu class="hidden relative shadow_boxes_content flex-shrink-0 pt-9 pb-12 pl-1.5 pr-2 w-64 bg-white mt-3 lg:block" />
          <div class="px-4 pb-8 md:flex-1 md:px-10 md:pb-12 pt-4 md:overflow-y-auto" style="min-height: 1200px;" scroll-region>
            <!-- <flash-messages /> -->
            <slot />

            <div class="mt-52" />
            
            <footer>
              <div>
                <p class="text_xxs text-center font-semibold">
                  Terms of Service / Website Privacy policy / Services Policy
                </p>
                <p class="text_xxs text-center font-semibold mt-3">
                  Copyright 2023 All right reserved
                </p>
              </div>
            </footer>

          </div>
        </div>
      </div>
    </div>
  </div>

</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'
import Logo from '@/Shared/Logo'
import Dropdown from '@/Shared/Dropdown'
import MainMenu from '@/Shared/MainMenu'
import FlashMessages from '@/Shared/FlashMessages'

export default {
  components: {
    Dropdown,
    FlashMessages,
    Icon,
    Link,
    Logo,
    MainMenu,
  },
  props: {
    auth: Object,
  },
}
</script>
