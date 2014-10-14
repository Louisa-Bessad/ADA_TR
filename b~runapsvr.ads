pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 4.6" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_runapsvr" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#2e339215#;
   pragma Export (C, u00001, "runapsvrB");
   u00002 : constant Version_32 := 16#ba46b2cd#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#10d589fc#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#ea58ea1a#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#df5044bd#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#2d1a1afa#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#72905399#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#39743d54#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#0d2b82ae#;
   pragma Export (C, u00010, "system__parametersB");
   u00011 : constant Version_32 := 16#b1479900#;
   pragma Export (C, u00011, "system__parametersS");
   u00012 : constant Version_32 := 16#30ec78bc#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#ec1008f3#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#9cd289cc#;
   pragma Export (C, u00014, "ada__exceptionsB");
   u00015 : constant Version_32 := 16#ed247096#;
   pragma Export (C, u00015, "ada__exceptionsS");
   u00016 : constant Version_32 := 16#95643e9a#;
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   u00017 : constant Version_32 := 16#03cf4fc2#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   u00018 : constant Version_32 := 16#a7343537#;
   pragma Export (C, u00018, "system__exception_tableB");
   u00019 : constant Version_32 := 16#8fdb15ca#;
   pragma Export (C, u00019, "system__exception_tableS");
   u00020 : constant Version_32 := 16#ff3fa16b#;
   pragma Export (C, u00020, "system__htableB");
   u00021 : constant Version_32 := 16#c2c5b625#;
   pragma Export (C, u00021, "system__htableS");
   u00022 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00022, "system__string_hashB");
   u00023 : constant Version_32 := 16#0b86c26e#;
   pragma Export (C, u00023, "system__string_hashS");
   u00024 : constant Version_32 := 16#6a8a6a74#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#880bf0fb#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00026, "system__img_intB");
   u00027 : constant Version_32 := 16#2fc1fa38#;
   pragma Export (C, u00027, "system__img_intS");
   u00028 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00028, "system__storage_elementsB");
   u00029 : constant Version_32 := 16#d7d76762#;
   pragma Export (C, u00029, "system__storage_elementsS");
   u00030 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00030, "system__tracebackB");
   u00031 : constant Version_32 := 16#4c9dce8f#;
   pragma Export (C, u00031, "system__tracebackS");
   u00032 : constant Version_32 := 16#47fb468c#;
   pragma Export (C, u00032, "system__unsigned_typesS");
   u00033 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00033, "system__wch_conB");
   u00034 : constant Version_32 := 16#92f134c7#;
   pragma Export (C, u00034, "system__wch_conS");
   u00035 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00035, "system__wch_stwB");
   u00036 : constant Version_32 := 16#bfe018c6#;
   pragma Export (C, u00036, "system__wch_stwS");
   u00037 : constant Version_32 := 16#5d4d477e#;
   pragma Export (C, u00037, "system__wch_cnvB");
   u00038 : constant Version_32 := 16#8c0fb211#;
   pragma Export (C, u00038, "system__wch_cnvS");
   u00039 : constant Version_32 := 16#f77d8799#;
   pragma Export (C, u00039, "interfacesS");
   u00040 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00040, "system__wch_jisB");
   u00041 : constant Version_32 := 16#d87d2905#;
   pragma Export (C, u00041, "system__wch_jisS");
   u00042 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00042, "system__traceback_entriesB");
   u00043 : constant Version_32 := 16#7f3bf4bb#;
   pragma Export (C, u00043, "system__traceback_entriesS");
   u00044 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00044, "system__stack_checkingB");
   u00045 : constant Version_32 := 16#8eb8a6d6#;
   pragma Export (C, u00045, "system__stack_checkingS");
   u00046 : constant Version_32 := 16#07116dec#;
   pragma Export (C, u00046, "ada__tagsB");
   u00047 : constant Version_32 := 16#2f42ba32#;
   pragma Export (C, u00047, "ada__tagsS");
   u00048 : constant Version_32 := 16#e6965fe6#;
   pragma Export (C, u00048, "system__val_unsB");
   u00049 : constant Version_32 := 16#5753abb7#;
   pragma Export (C, u00049, "system__val_unsS");
   u00050 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00050, "system__val_utilB");
   u00051 : constant Version_32 := 16#26b78fe5#;
   pragma Export (C, u00051, "system__val_utilS");
   u00052 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00052, "system__case_utilB");
   u00053 : constant Version_32 := 16#80067a72#;
   pragma Export (C, u00053, "system__case_utilS");
   u00054 : constant Version_32 := 16#7a7b22a8#;
   pragma Export (C, u00054, "aperiodic_serversB");
   u00055 : constant Version_32 := 16#22a8748b#;
   pragma Export (C, u00055, "aperiodic_serversS");
   u00056 : constant Version_32 := 16#237a877d#;
   pragma Export (C, u00056, "background_serversB");
   u00057 : constant Version_32 := 16#aca7604f#;
   pragma Export (C, u00057, "background_serversS");
   u00058 : constant Version_32 := 16#00dc945f#;
   pragma Export (C, u00058, "ada__real_timeB");
   u00059 : constant Version_32 := 16#5bfb6637#;
   pragma Export (C, u00059, "ada__real_timeS");
   u00060 : constant Version_32 := 16#763c483e#;
   pragma Export (C, u00060, "system__arith_64B");
   u00061 : constant Version_32 := 16#7a763c0a#;
   pragma Export (C, u00061, "system__arith_64S");
   u00062 : constant Version_32 := 16#a6fc8110#;
   pragma Export (C, u00062, "system__taskingB");
   u00063 : constant Version_32 := 16#6f5df0cc#;
   pragma Export (C, u00063, "system__taskingS");
   u00064 : constant Version_32 := 16#ec73985b#;
   pragma Export (C, u00064, "system__task_primitivesS");
   u00065 : constant Version_32 := 16#c9494811#;
   pragma Export (C, u00065, "system__os_interfaceB");
   u00066 : constant Version_32 := 16#7dd19980#;
   pragma Export (C, u00066, "system__os_interfaceS");
   u00067 : constant Version_32 := 16#a2230cb9#;
   pragma Export (C, u00067, "interfaces__cB");
   u00068 : constant Version_32 := 16#ebbc3ca7#;
   pragma Export (C, u00068, "interfaces__cS");
   u00069 : constant Version_32 := 16#6a8b004b#;
   pragma Export (C, u00069, "system__linuxS");
   u00070 : constant Version_32 := 16#52a12383#;
   pragma Export (C, u00070, "system__task_primitives__operationsB");
   u00071 : constant Version_32 := 16#e8297115#;
   pragma Export (C, u00071, "system__task_primitives__operationsS");
   u00072 : constant Version_32 := 16#b9e58495#;
   pragma Export (C, u00072, "system__bit_opsB");
   u00073 : constant Version_32 := 16#c30e4013#;
   pragma Export (C, u00073, "system__bit_opsS");
   u00074 : constant Version_32 := 16#2a8bb2a4#;
   pragma Export (C, u00074, "system__interrupt_managementB");
   u00075 : constant Version_32 := 16#84111231#;
   pragma Export (C, u00075, "system__interrupt_managementS");
   u00076 : constant Version_32 := 16#17ae9ccc#;
   pragma Export (C, u00076, "system__multiprocessorsB");
   u00077 : constant Version_32 := 16#15b68589#;
   pragma Export (C, u00077, "system__multiprocessorsS");
   u00078 : constant Version_32 := 16#22d03640#;
   pragma Export (C, u00078, "system__os_primitivesB");
   u00079 : constant Version_32 := 16#9dcb96d3#;
   pragma Export (C, u00079, "system__os_primitivesS");
   u00080 : constant Version_32 := 16#cf99f883#;
   pragma Export (C, u00080, "system__stack_checking__operationsB");
   u00081 : constant Version_32 := 16#49df1cef#;
   pragma Export (C, u00081, "system__stack_checking__operationsS");
   u00082 : constant Version_32 := 16#1d302859#;
   pragma Export (C, u00082, "system__crtlS");
   u00083 : constant Version_32 := 16#3d54d5f6#;
   pragma Export (C, u00083, "system__task_infoB");
   u00084 : constant Version_32 := 16#62065da0#;
   pragma Export (C, u00084, "system__task_infoS");
   u00085 : constant Version_32 := 16#0a363cc0#;
   pragma Export (C, u00085, "system__tasking__debugB");
   u00086 : constant Version_32 := 16#71f06032#;
   pragma Export (C, u00086, "system__tasking__debugS");
   u00087 : constant Version_32 := 16#39591e91#;
   pragma Export (C, u00087, "system__concat_2B");
   u00088 : constant Version_32 := 16#d6cae806#;
   pragma Export (C, u00088, "system__concat_2S");
   u00089 : constant Version_32 := 16#ae97ef6c#;
   pragma Export (C, u00089, "system__concat_3B");
   u00090 : constant Version_32 := 16#5b301890#;
   pragma Export (C, u00090, "system__concat_3S");
   u00091 : constant Version_32 := 16#c9fdc962#;
   pragma Export (C, u00091, "system__concat_6B");
   u00092 : constant Version_32 := 16#ead0efee#;
   pragma Export (C, u00092, "system__concat_6S");
   u00093 : constant Version_32 := 16#def1dd00#;
   pragma Export (C, u00093, "system__concat_5B");
   u00094 : constant Version_32 := 16#3d23d45b#;
   pragma Export (C, u00094, "system__concat_5S");
   u00095 : constant Version_32 := 16#3493e6c0#;
   pragma Export (C, u00095, "system__concat_4B");
   u00096 : constant Version_32 := 16#2f45f944#;
   pragma Export (C, u00096, "system__concat_4S");
   u00097 : constant Version_32 := 16#1eab0e09#;
   pragma Export (C, u00097, "system__img_enum_newB");
   u00098 : constant Version_32 := 16#aa1dd10a#;
   pragma Export (C, u00098, "system__img_enum_newS");
   u00099 : constant Version_32 := 16#194ccd7b#;
   pragma Export (C, u00099, "system__img_unsB");
   u00100 : constant Version_32 := 16#d80f7a7b#;
   pragma Export (C, u00100, "system__img_unsS");
   u00101 : constant Version_32 := 16#3b607801#;
   pragma Export (C, u00101, "system__stack_usageB");
   u00102 : constant Version_32 := 16#abdf2d5b#;
   pragma Export (C, u00102, "system__stack_usageS");
   u00103 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00103, "system__ioB");
   u00104 : constant Version_32 := 16#b358edb5#;
   pragma Export (C, u00104, "system__ioS");
   u00105 : constant Version_32 := 16#155f65d0#;
   pragma Export (C, u00105, "ada__real_time__delaysB");
   u00106 : constant Version_32 := 16#6becaccd#;
   pragma Export (C, u00106, "ada__real_time__delaysS");
   u00107 : constant Version_32 := 16#51864586#;
   pragma Export (C, u00107, "eventsB");
   u00108 : constant Version_32 := 16#646a342f#;
   pragma Export (C, u00108, "eventsS");
   u00109 : constant Version_32 := 16#d803ea95#;
   pragma Export (C, u00109, "aperiodic_tasksB");
   u00110 : constant Version_32 := 16#668ffee4#;
   pragma Export (C, u00110, "aperiodic_tasksS");
   u00111 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00111, "gnatS");
   u00112 : constant Version_32 := 16#e256419f#;
   pragma Export (C, u00112, "gnat__heap_sort_aB");
   u00113 : constant Version_32 := 16#80b467cb#;
   pragma Export (C, u00113, "gnat__heap_sort_aS");
   u00114 : constant Version_32 := 16#a0c32bec#;
   pragma Export (C, u00114, "ioB");
   u00115 : constant Version_32 := 16#45040713#;
   pragma Export (C, u00115, "ioS");
   u00116 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00116, "ada__integer_text_ioB");
   u00117 : constant Version_32 := 16#f1daf268#;
   pragma Export (C, u00117, "ada__integer_text_ioS");
   u00118 : constant Version_32 := 16#7a8f4ce5#;
   pragma Export (C, u00118, "ada__text_ioB");
   u00119 : constant Version_32 := 16#7662da97#;
   pragma Export (C, u00119, "ada__text_ioS");
   u00120 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00120, "ada__streamsS");
   u00121 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00121, "interfaces__c_streamsB");
   u00122 : constant Version_32 := 16#40dd1af2#;
   pragma Export (C, u00122, "interfaces__c_streamsS");
   u00123 : constant Version_32 := 16#5efa797c#;
   pragma Export (C, u00123, "system__file_ioB");
   u00124 : constant Version_32 := 16#206d1d17#;
   pragma Export (C, u00124, "system__file_ioS");
   u00125 : constant Version_32 := 16#7cc77cc0#;
   pragma Export (C, u00125, "ada__finalizationB");
   u00126 : constant Version_32 := 16#01acb175#;
   pragma Export (C, u00126, "ada__finalizationS");
   u00127 : constant Version_32 := 16#01cb6d81#;
   pragma Export (C, u00127, "system__finalization_rootB");
   u00128 : constant Version_32 := 16#23ed1b02#;
   pragma Export (C, u00128, "system__finalization_rootS");
   u00129 : constant Version_32 := 16#dbb36d26#;
   pragma Export (C, u00129, "system__finalization_implementationB");
   u00130 : constant Version_32 := 16#b301b745#;
   pragma Export (C, u00130, "system__finalization_implementationS");
   u00131 : constant Version_32 := 16#386436bc#;
   pragma Export (C, u00131, "system__restrictionsB");
   u00132 : constant Version_32 := 16#d5f873b7#;
   pragma Export (C, u00132, "system__restrictionsS");
   u00133 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00133, "system__stream_attributesB");
   u00134 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00134, "system__stream_attributesS");
   u00135 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00135, "ada__io_exceptionsS");
   u00136 : constant Version_32 := 16#7afa2756#;
   pragma Export (C, u00136, "interfaces__c__stringsB");
   u00137 : constant Version_32 := 16#739e0600#;
   pragma Export (C, u00137, "interfaces__c__stringsS");
   u00138 : constant Version_32 := 16#621b06ef#;
   pragma Export (C, u00138, "system__crtl__runtimeS");
   u00139 : constant Version_32 := 16#f9b9cd19#;
   pragma Export (C, u00139, "system__os_libB");
   u00140 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00140, "system__os_libS");
   u00141 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00141, "system__stringsB");
   u00142 : constant Version_32 := 16#9af0503e#;
   pragma Export (C, u00142, "system__stringsS");
   u00143 : constant Version_32 := 16#f225f4c0#;
   pragma Export (C, u00143, "system__file_control_blockS");
   u00144 : constant Version_32 := 16#b90c86f6#;
   pragma Export (C, u00144, "ada__finalization__list_controllerB");
   u00145 : constant Version_32 := 16#b97dfd74#;
   pragma Export (C, u00145, "ada__finalization__list_controllerS");
   u00146 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00146, "ada__text_io__integer_auxB");
   u00147 : constant Version_32 := 16#b9793d30#;
   pragma Export (C, u00147, "ada__text_io__integer_auxS");
   u00148 : constant Version_32 := 16#515dc0e3#;
   pragma Export (C, u00148, "ada__text_io__generic_auxB");
   u00149 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00149, "ada__text_io__generic_auxS");
   u00150 : constant Version_32 := 16#ef6c8032#;
   pragma Export (C, u00150, "system__img_biuB");
   u00151 : constant Version_32 := 16#81d9cec1#;
   pragma Export (C, u00151, "system__img_biuS");
   u00152 : constant Version_32 := 16#10618bf9#;
   pragma Export (C, u00152, "system__img_llbB");
   u00153 : constant Version_32 := 16#c01ede3f#;
   pragma Export (C, u00153, "system__img_llbS");
   u00154 : constant Version_32 := 16#9777733a#;
   pragma Export (C, u00154, "system__img_lliB");
   u00155 : constant Version_32 := 16#3c554f2b#;
   pragma Export (C, u00155, "system__img_lliS");
   u00156 : constant Version_32 := 16#f931f062#;
   pragma Export (C, u00156, "system__img_llwB");
   u00157 : constant Version_32 := 16#6972fda9#;
   pragma Export (C, u00157, "system__img_llwS");
   u00158 : constant Version_32 := 16#b532ff4e#;
   pragma Export (C, u00158, "system__img_wiuB");
   u00159 : constant Version_32 := 16#ef984953#;
   pragma Export (C, u00159, "system__img_wiuS");
   u00160 : constant Version_32 := 16#7993dbbd#;
   pragma Export (C, u00160, "system__val_intB");
   u00161 : constant Version_32 := 16#65bf30c5#;
   pragma Export (C, u00161, "system__val_intS");
   u00162 : constant Version_32 := 16#936e9286#;
   pragma Export (C, u00162, "system__val_lliB");
   u00163 : constant Version_32 := 16#b73efc5a#;
   pragma Export (C, u00163, "system__val_lliS");
   u00164 : constant Version_32 := 16#68f8d5f8#;
   pragma Export (C, u00164, "system__val_lluB");
   u00165 : constant Version_32 := 16#3d0911fe#;
   pragma Export (C, u00165, "system__val_lluS");
   u00166 : constant Version_32 := 16#48087e79#;
   pragma Export (C, u00166, "system__tasking__protected_objectsB");
   u00167 : constant Version_32 := 16#e2c8a7eb#;
   pragma Export (C, u00167, "system__tasking__protected_objectsS");
   u00168 : constant Version_32 := 16#ff133197#;
   pragma Export (C, u00168, "system__soft_links__taskingB");
   u00169 : constant Version_32 := 16#da1c0a98#;
   pragma Export (C, u00169, "system__soft_links__taskingS");
   u00170 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00170, "ada__exceptions__is_null_occurrenceB");
   u00171 : constant Version_32 := 16#c4bf5e73#;
   pragma Export (C, u00171, "ada__exceptions__is_null_occurrenceS");
   u00172 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00172, "system__tracesB");
   u00173 : constant Version_32 := 16#df077250#;
   pragma Export (C, u00173, "system__tracesS");
   u00174 : constant Version_32 := 16#7a9a5f5e#;
   pragma Export (C, u00174, "system__tasking__protected_objects__entriesB");
   u00175 : constant Version_32 := 16#a416dd28#;
   pragma Export (C, u00175, "system__tasking__protected_objects__entriesS");
   u00176 : constant Version_32 := 16#4d3e0469#;
   pragma Export (C, u00176, "system__tasking__initializationB");
   u00177 : constant Version_32 := 16#7f6b69f1#;
   pragma Export (C, u00177, "system__tasking__initializationS");
   u00178 : constant Version_32 := 16#9fcca227#;
   pragma Export (C, u00178, "system__tasking__protected_objects__operationsB");
   u00179 : constant Version_32 := 16#eb309cf0#;
   pragma Export (C, u00179, "system__tasking__protected_objects__operationsS");
   u00180 : constant Version_32 := 16#b59e6e78#;
   pragma Export (C, u00180, "system__tasking__entry_callsB");
   u00181 : constant Version_32 := 16#687efea4#;
   pragma Export (C, u00181, "system__tasking__entry_callsS");
   u00182 : constant Version_32 := 16#88081561#;
   pragma Export (C, u00182, "system__tasking__queuingB");
   u00183 : constant Version_32 := 16#ee1cad28#;
   pragma Export (C, u00183, "system__tasking__queuingS");
   u00184 : constant Version_32 := 16#f488ba38#;
   pragma Export (C, u00184, "system__tasking__utilitiesB");
   u00185 : constant Version_32 := 16#0ef27416#;
   pragma Export (C, u00185, "system__tasking__utilitiesS");
   u00186 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00186, "system__traces__taskingB");
   u00187 : constant Version_32 := 16#becc801d#;
   pragma Export (C, u00187, "system__traces__taskingS");
   u00188 : constant Version_32 := 16#959cf892#;
   pragma Export (C, u00188, "system__tasking__rendezvousB");
   u00189 : constant Version_32 := 16#d056c48f#;
   pragma Export (C, u00189, "system__tasking__rendezvousS");
   u00190 : constant Version_32 := 16#3d48c7bd#;
   pragma Export (C, u00190, "tasksB");
   u00191 : constant Version_32 := 16#8a5481f2#;
   pragma Export (C, u00191, "tasksS");
   u00192 : constant Version_32 := 16#9d5d80e7#;
   pragma Export (C, u00192, "ada__dynamic_prioritiesB");
   u00193 : constant Version_32 := 16#44ec5f70#;
   pragma Export (C, u00193, "ada__dynamic_prioritiesS");
   u00194 : constant Version_32 := 16#2c6a25be#;
   pragma Export (C, u00194, "ada__task_identificationB");
   u00195 : constant Version_32 := 16#0484fbde#;
   pragma Export (C, u00195, "ada__task_identificationS");
   u00196 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00196, "system__address_imageB");
   u00197 : constant Version_32 := 16#8cf687c0#;
   pragma Export (C, u00197, "system__address_imageS");
   u00198 : constant Version_32 := 16#1d48e0a5#;
   pragma Export (C, u00198, "periodic_tasksB");
   u00199 : constant Version_32 := 16#4d54f585#;
   pragma Export (C, u00199, "periodic_tasksS");
   u00200 : constant Version_32 := 16#cbf32294#;
   pragma Export (C, u00200, "scenariiB");
   u00201 : constant Version_32 := 16#a7f51271#;
   pragma Export (C, u00201, "scenariiS");
   u00202 : constant Version_32 := 16#14757b6f#;
   pragma Export (C, u00202, "system__tasking__stagesB");
   u00203 : constant Version_32 := 16#84f88b56#;
   pragma Export (C, u00203, "system__tasking__stagesS");
   u00204 : constant Version_32 := 16#18c6a2af#;
   pragma Export (C, u00204, "deferred_serversB");
   u00205 : constant Version_32 := 16#6c11b96c#;
   pragma Export (C, u00205, "deferred_serversS");
   u00206 : constant Version_32 := 16#cce2204c#;
   pragma Export (C, u00206, "polling_serversB");
   u00207 : constant Version_32 := 16#d918ea4f#;
   pragma Export (C, u00207, "polling_serversS");
   u00208 : constant Version_32 := 16#520d31ca#;
   pragma Export (C, u00208, "sporadic_serversB");
   u00209 : constant Version_32 := 16#04ebb833#;
   pragma Export (C, u00209, "sporadic_serversS");
   u00210 : constant Version_32 := 16#0936cab5#;
   pragma Export (C, u00210, "system__memoryB");
   u00211 : constant Version_32 := 16#e791a6ef#;
   pragma Export (C, u00211, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.heap_sort_a%s
   --  gnat.heap_sort_a%b
   --  interfaces%s
   --  system%s
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.linux%s
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_checking.operations%s
   --  system.stack_usage%s
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.stack_checking.operations%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.crtl.runtime%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.interrupt_management%b
   --  system.tasking%s
   --  ada.task_identification%s
   --  ada.dynamic_priorities%s
   --  system.task_primitives.operations%s
   --  ada.dynamic_priorities%b
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.stack_usage%b
   --  ada.command_line%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.file_io%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.utilities%s
   --  ada.task_identification%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  io%s
   --  tasks%s
   --  tasks%b
   --  io%b
   --  aperiodic_servers%s
   --  aperiodic_tasks%s
   --  aperiodic_tasks%b
   --  background_servers%s
   --  deferred_servers%s
   --  events%s
   --  events%b
   --  periodic_tasks%s
   --  deferred_servers%b
   --  background_servers%b
   --  polling_servers%s
   --  polling_servers%b
   --  scenarii%s
   --  scenarii%b
   --  periodic_tasks%b
   --  runapsvr%b
   --  sporadic_servers%s
   --  sporadic_servers%b
   --  aperiodic_servers%b
   --  END ELABORATION ORDER

end ada_main;
