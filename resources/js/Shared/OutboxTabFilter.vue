<script setup>

</script>

<template>

    <div class="flex items-center single_text_color__4 mb-3">
        <label clasS="flex w-full bg-gray-100 hover:bg-gray-200">
            <div class="pl-4 pr-2 py-4">
                <p>
                    ?
                </p>
            </div>
            <input class="w-full px-2 py-3 bg-transparent input_placeholder_color" type="search" placeholder="Search" />
        </label>

        <!-- <div class="body">

            <div id="date_picker">
                <div id="date_picker_input">
                    <label>Datepicker</label>
                    <input type="text" id="date"/>
                </div>
                <div id="date_picker_calendar"> 
                    <div id="calendar_header">
                        <button class="cal-btn back">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAABJUlEQVR4nO2Uv0oDQRCHR9BKrAQJ2FgIdnc7njtzSbMzd7lGC80T5DXMW+gzpNJHsPEJYuELBA60EBELsfIfBGIixvNyt0IKP9h2vt3fb1iAfxaCXZt0DGuOrO8+jmHNQ3JHnwLDeutrOI4lJDcTAcngDwSDSUSkCbK++RSEJAdfejCkfX+31/63oq1N15H0rn7Bch80s42Z22SsdGsLrHQLVxZJLioLSC8BYKlQELLbQpanCrk/Y+y2C4dPFd6bP3s9hrI455aR9GqO219HUbRSWjB6xV5qDcnL7wJ5RZs2oQpIelqi2BOoShBkq0g6LMg932m11qAOhnX/5+zlEHyALOczhp+BL6x1DSR9mPoOHsM42QSfGE6yUR+kQxO7ttfhC80HheuaG9wAq10AAAAASUVORK5CYII=">
                        </button>
                        <span></span>
                        <button class="cal-btn front">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAABJUlEQVR4nO2Uv0oDQRCHR9BKrAQJ2FgIdnc7njtzSbMzd7lGC80T5DXMW+gzpNJHsPEJYuELBA60EBELsfIfBGIixvNyt0IKP9h2vt3fb1iAfxaCXZt0DGuOrO8+jmHNQ3JHnwLDeutrOI4lJDcTAcngDwSDSUSkCbK++RSEJAdfejCkfX+31/63oq1N15H0rn7Bch80s42Z22SsdGsLrHQLVxZJLioLSC8BYKlQELLbQpanCrk/Y+y2C4dPFd6bP3s9hrI455aR9GqO219HUbRSWjB6xV5qDcnL7wJ5RZs2oQpIelqi2BOoShBkq0g6LMg932m11qAOhnX/5+zlEHyALOczhp+BL6x1DSR9mPoOHsM42QSfGE6yUR+kQxO7ttfhC80HheuaG9wAq10AAAAASUVORK5CYII=">
                        </button>
                    </div>
                    <div id="cal_wrapper">
                        <div id="cal_days"></div>
                        <div id="calendar_main"></div>
                    </div>
                </div>
            </div>
        </div> -->

        <dropdown class="bg-gray-100 px-4 py-2.5 hover:bg-gray-200" placement="bottom-end">
            <template #default>
                <div class="group flex items-center cursor-pointer select-none">
                    <span class="text-sm mr-3 capitalize">
                        filter
                    </span>
                    <icon class="w-6 h-6 fill-gray-300 focus:fill-indigo-600" name="cheveron-down" />
                </div>
            </template>
            <template #dropdown>
                <div class="mt-2 py-2 text-sm bg-white rounded shadow-xl">
                    <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">option 1</Link>
                    <Link class="block px-6 py-2 hover:text-white hover:bg-indigo-500" href="#">option 2</Link>
                    <Link class="block px-6 py-2 w-full text-left hover:text-white hover:bg-indigo-500" href="#" method="delete" as="button">option 3</Link>
                </div>
            </template>
        </dropdown>
    </div>

</template>

<script>
    
    import Icon from '@/Shared/Icon'
    import Dropdown from '@/Shared/Dropdown'

export default {
    components: {
        Icon,
        Dropdown,
    },
    data: () => ({
        date: '2019-01-01'
    }),
    methods: {

        custom_date(e) {

            const calendar = document.querySelector("#calendar_main"),
            input = document.querySelector("#date"),
            calHeader = document.querySelector("#calendar_header"),
            calHeaderTitle = document.querySelector("#calendar_header span"),
            calDays = document.querySelector("#cal_days"),
            days = [
                "Sunday",
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday"
            ],
            months = [
                "January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"
            ];

            let oneDay = 60 * 60 * 24 * 1000;

            let todayTimestamp =
            Date.now() -
            (Date.now() % oneDay) +
            new Date().getTimezoneOffset() * 1000 * 60;

            let selectedDay = todayTimestamp;

        }

    },
}

</script>