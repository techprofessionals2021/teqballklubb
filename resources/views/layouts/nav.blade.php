<!--sidebar wrapper -->
<div class="sidebar-wrapper" style="background-image: url({{asset('assets/images/bg-themes/2.png')}});" data-simplebar="true">
            <div class="sidebar-header">
                <a href="{{route('fullcalender.id','all')}}">
                    <div>
                        <img src="{{asset('assets/images/nor-logo_03.png')}}"  class="logo-iconn" alt="logo icon">
                    </div>
                </a>
{{--                <div>--}}
{{--                    <h4 class="logo-text">SSA</h4>--}}
{{--                </div>--}}
                <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
                </div>
            </div>
            <!--navigation-->
            <ul class="metismenu" id="menu">
                <li class="d-none">
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class='bx bx-user'></i>
                        </div>
                        <div class="menu-title">{{__('custom.users')}}</div>
                    </a>
                    <ul>
                        <li> <a href="{{route('user.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.users')}} {{__('custom.list')}}</a>
                        </li>
                        <li> <a href="#userCreate"><i class="bx bx-right-arrow-alt"></i>{{__('custom.create')}} {{__('custom.user')}}</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class='bx bx-user'></i>
                        </div>
                        <div class="menu-title">Admin</div>
                    </a>
                    <ul>
                        <li> <a href="{{route('coach.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.coaches')}}</a></li>
                        <li> <a href="{{route('video.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.videos')}}</a></li>
                        <li> <a href="{{route('setup-fixed-program.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.setupFixedPrograms')}}</a></li>
                        <li> <a href="{{route('program-with-video.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.programWithVideo')}}</a></li>
{{--                        <li> <a href="#item"><i class="bx bx-right-arrow-alt"></i>Fixed choices</a></li>--}}
{{--                        <li> <a href="#item"><i class="bx bx-right-arrow-alt"></i>{{__('custom.statistics')}}</a></li>--}}
                    </ul>
                </li>
{{--                <li>--}}
{{--                    <a href="javascript:;" class="has-arrow">--}}
{{--                        <div class="parent-icon"><i class='bx bx-export'></i>--}}
{{--                        </div>--}}
{{--                        <div class="menu-title">{{__('custom.export')}}</div>--}}
{{--                    </a>--}}
{{--                    <ul>--}}
{{--                        <li> <a href="{{route('getAllAnthropometries')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.anthropometric')}}</a></li>--}}
{{--                        <li> <a href="{{route('getAllStats3dScreenings')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.screening')}}</a></li>--}}
{{--                        <li> <a href="{{route('getAllStatsTesters')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.tester')}}</a></li>--}}
{{--                        <li> <a href="{{route('getAllStatsFootballs')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.football')}}</a></li>--}}
{{--                        <li> <a href="{{route('getAllStatsQuestions')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.questionnaire')}}</a></li>--}}
{{--                    </ul>--}}
{{--                </li>--}}
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class='bx bx-data'></i>
                        </div>
                        <div class="menu-title">{{__('custom.dailyUse')}}</div>
                    </a>
                    <ul>
                        <li> <a href="{{route('user.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.practitioners')}}</a></li>
                        <li> <a href="{{route('program-setup.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.programSetup')}}</a></li>
                        <li> <a href="{{route('fullcalender.id','all')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.calendarSSA')}}</a></li>
{{--                        <li> <a href="{{route('allUsersActivityList')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.practitionersOwnActivity')}}</a></li>--}}
{{--                        <li> <a href="{{route('pt-clipboard.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.ptClipboard')}}</a></li>--}}
{{--                        <li> <a href="{{route('ptClipboardLogs')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.clipboardLog')}}</a></li>--}}
                    </ul>
                </li>
{{--                <li>--}}
{{--                    <a href="{{route('statistic.index')}}">--}}
{{--                        <div class="parent-icon"><i class='bx bx-bar-chart'></i>--}}
{{--                        </div>--}}
{{--                        <div class="menu-title">{{__('custom.statistics')}}</div>--}}
{{--                    </a>--}}
{{--                </li>--}}
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class='bx bxs-cube-alt'></i>
                        </div>
                        <div class="menu-title">{{__('custom.fixedOptions')}}</div>
                    </a>
                    <ul>
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.exerciseType')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('exercise-type.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.exerciseTypeList')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('exercise-type.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addExerciseType')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
                        <li>
                            <a href="javascript:;" class="has-arrow">
                                <div><i class='bx bx-user'></i>
                                </div>
                                <div class="menu-title">{{__('custom.exercise_category')}}</div>
                            </a>
                            <ul>
                                <li> <a href="{{route('exercise-category.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.exerciseCategoryList')}}</a>
                                </li>
                                <li> <a href="{{route('exercise-category.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addExerciseCategory')}}</a>
                                </li>
                            </ul>
                        </li>
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.professions')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('profession.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.professionList')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('profession.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addProfession')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
                        <li>
                            <a href="javascript:;" class="has-arrow">
                                <div><i class='bx bx-user'></i>
                                </div>
                                <div class="menu-title">{{__('custom.group')}}</div>
                            </a>
                            <ul>
                                <li> <a href="{{route('group.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.groupList')}}</a>
                                </li>
                                <li> <a href="{{route('group.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addGroup')}}</a>
                                </li>
                            </ul>
                        </li>
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.intensity')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('intensity.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.intensity')}} {{__('custom.list')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('intensity.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.create')}} {{__('custom.intensity')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.painCategory')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('pain-category.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.painCategory')}} {{__('custom.list')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('pain-category.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.create')}} {{__('custom.painCategory')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.blogCategory')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('blog-category.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.blogCategory')}} {{__('custom.list')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('blog-category.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.create')}} {{__('custom.blogCategory')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
                        <li>
                            <a href="javascript:;" class="has-arrow">
                                <div><i class='bx bx-user'></i>
                                </div>
                                <div class="menu-title">{{__('custom.mmCenter')}}</div>
                            </a>
                            <ul>
                                <li> <a href="{{route('mm-center.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.mmCenterList')}}</a>
                                </li>
                                <li> <a href="{{route('mm-center.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addmmCenter')}}</a>
                                </li>
                            </ul>
                        </li>
{{--                        <li>--}}
{{--                            <a href="javascript:;" class="has-arrow">--}}
{{--                                <div><i class='bx bx-user'></i>--}}
{{--                                </div>--}}
{{--                                <div class="menu-title">{{__('custom.caseworker')}}</div>--}}
{{--                            </a>--}}
{{--                            <ul>--}}
{{--                                <li> <a href="{{route('caseworker.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.caseworker')}} {{__('custom.list')}}</a>--}}
{{--                                </li>--}}
{{--                                <li> <a href="{{route('caseworker.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.create')}} {{__('custom.caseworker')}}</a>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </li>--}}
                        <li>
                            <a href="javascript:;" class="has-arrow">
                                <div><i class='bx bx-user'></i>
                                </div>
                                <div class="menu-title">{{__('custom.rolesPermissions')}}</div>
                            </a>
                            <ul>
                                <li> <a href="{{route('role.index')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.roleList')}}</a>
                                </li>
                                <li> <a href="{{route('role.create')}}"><i class="bx bx-right-arrow-alt"></i>{{__('custom.addRole')}}</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><div class="parent-icon"><i class='bx bx-exit'></i></div>
                        <div class="menu-title">{{ __('custom.logout') }}</div>
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>

{{--                <li class="menu-label">UI Elements</li>--}}

{{--                <li>
                    <a href="{{ url('widgets') }}">
                        <div class="parent-icon"><i class='bx bx-cookie'></i>
                        </div>
                        <div class="menu-title">Widgets</div>
                    </a>
                </li>--}}

{{--                <li class="menu-label">Others</li>
                <li>
                    <a class="has-arrow" href="javascript:;">
                        <div class="parent-icon"><i class="bx bx-menu"></i>
                        </div>
                        <div class="menu-title">Menu Levels</div>
                    </a>
                    <ul>
                        <li> <a class="has-arrow" href="javascript:;"><i class="bx bx-right-arrow-alt"></i>Level One</a>
                            <ul>
                                <li> <a class="has-arrow" href="javascript:;"><i class="bx bx-right-arrow-alt"></i>Level Two</a>
                                    <ul>
                                        <li> <a href="javascript:;"><i class="bx bx-right-arrow-alt"></i>Level Three</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="https://codervent.com/rocker/documentation/" target="_blank">
                        <div class="parent-icon"><i class="bx bx-folder"></i>
                        </div>
                        <div class="menu-title">Documentation</div>
                    </a>
                </li>
                <li>
                    <a href="https://themeforest.net/user/codervent" target="_blank">
                        <div class="parent-icon"><i class="bx bx-support"></i>
                        </div>
                        <div class="menu-title">Support</div>
                    </a>
                </li>--}}
            </ul>
            <!--end navigation-->
        </div>
        <!--end sidebar wrapper -->
