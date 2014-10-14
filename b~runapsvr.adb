pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~runapsvr.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~runapsvr.adb");

with System.Restrictions;

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   procedure adainit is
      E102 : Boolean; pragma Import (Ada, E102, "system__stack_usage_E");
      E013 : Boolean; pragma Import (Ada, E013, "system__soft_links_E");
      E019 : Boolean; pragma Import (Ada, E019, "system__exception_table_E");
      E135 : Boolean; pragma Import (Ada, E135, "ada__io_exceptions_E");
      E047 : Boolean; pragma Import (Ada, E047, "ada__tags_E");
      E120 : Boolean; pragma Import (Ada, E120, "ada__streams_E");
      E068 : Boolean; pragma Import (Ada, E068, "interfaces__c_E");
      E137 : Boolean; pragma Import (Ada, E137, "interfaces__c__strings_E");
      E084 : Boolean; pragma Import (Ada, E084, "system__task_info_E");
      E009 : Boolean; pragma Import (Ada, E009, "system__secondary_stack_E");
      E128 : Boolean; pragma Import (Ada, E128, "system__finalization_root_E");
      E130 : Boolean; pragma Import (Ada, E130, "system__finalization_implementation_E");
      E126 : Boolean; pragma Import (Ada, E126, "ada__finalization_E");
      E145 : Boolean; pragma Import (Ada, E145, "ada__finalization__list_controller_E");
      E143 : Boolean; pragma Import (Ada, E143, "system__file_control_block_E");
      E124 : Boolean; pragma Import (Ada, E124, "system__file_io_E");
      E140 : Boolean; pragma Import (Ada, E140, "system__os_lib_E");
      E177 : Boolean; pragma Import (Ada, E177, "system__tasking__initialization_E");
      E167 : Boolean; pragma Import (Ada, E167, "system__tasking__protected_objects_E");
      E059 : Boolean; pragma Import (Ada, E059, "ada__real_time_E");
      E119 : Boolean; pragma Import (Ada, E119, "ada__text_io_E");
      E175 : Boolean; pragma Import (Ada, E175, "system__tasking__protected_objects__entries_E");
      E183 : Boolean; pragma Import (Ada, E183, "system__tasking__queuing_E");
      E203 : Boolean; pragma Import (Ada, E203, "system__tasking__stages_E");
      E115 : Boolean; pragma Import (Ada, E115, "io_E");
      E191 : Boolean; pragma Import (Ada, E191, "tasks_E");
      E055 : Boolean; pragma Import (Ada, E055, "aperiodic_servers_E");
      E110 : Boolean; pragma Import (Ada, E110, "aperiodic_tasks_E");
      E057 : Boolean; pragma Import (Ada, E057, "background_servers_E");
      E205 : Boolean; pragma Import (Ada, E205, "deferred_servers_E");
      E108 : Boolean; pragma Import (Ada, E108, "events_E");
      E199 : Boolean; pragma Import (Ada, E199, "periodic_tasks_E");
      E207 : Boolean; pragma Import (Ada, E207, "polling_servers_E");
      E201 : Boolean; pragma Import (Ada, E201, "scenarii_E");
      E209 : Boolean; pragma Import (Ada, E209, "sporadic_servers_E");

      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Zero_Cost_Exceptions : Integer;
      pragma Import (C, Zero_Cost_Exceptions, "__gl_zero_cost_exceptions");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
   begin
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := 'P';
      Task_Dispatching_Policy := 'F';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, True, 
           False, False, False, False, False, False, False, False, 
           False),
         Value => (0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, False, True, True, False, False, False, False, 
           True, True, True, True, True, False, True, True, 
           False, False, True, True, False, True, True, True, 
           True, True, True, False, True, True, False, True, 
           False, False, False, False, True, True, False, False, 
           True, True, False, False, True, False, False, False, 
           False, False, False, True, False, True, True, True, 
           True, False, True, False, True, True, True, True, 
           True, False, True, False, False, True, False, True, 
           False),
         Count => (2, 0, 0, 4, 0, 3, 0),
         Unknown => (False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Zero_Cost_Exceptions := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      System.Stack_Usage'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E019 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E135 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E120 := True;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E084 := True;
      E137 := True;
      E068 := True;
      Ada.Tags'Elab_Body;
      E047 := True;
      System.Soft_Links'Elab_Body;
      E013 := True;
      E102 := True;
      System.Secondary_Stack'Elab_Body;
      E009 := True;
      System.Finalization_Root'Elab_Spec;
      E128 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E130 := True;
      Ada.Finalization'Elab_Spec;
      E126 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E145 := True;
      System.File_Control_Block'Elab_Spec;
      E143 := True;
      System.Os_Lib'Elab_Body;
      E140 := True;
      System.File_Io'Elab_Body;
      E124 := True;
      System.Tasking.Initialization'Elab_Body;
      E177 := True;
      System.Tasking.Protected_Objects'Elab_Body;
      E167 := True;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E059 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E119 := True;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E175 := True;
      System.Tasking.Queuing'Elab_Body;
      E183 := True;
      System.Tasking.Stages'Elab_Body;
      E203 := True;
      Tasks'Elab_Spec;
      Tasks'Elab_Body;
      E191 := True;
      IO'ELAB_BODY;
      E115 := True;
      Aperiodic_Tasks'Elab_Spec;
      E110 := True;
      E108 := True;
      Deferred_Servers'Elab_Body;
      E205 := True;
      E057 := True;
      E207 := True;
      Scenarii'Elab_Spec;
      E201 := True;
      Periodic_Tasks'Elab_Body;
      E199 := True;
      E209 := True;
      Aperiodic_Servers'Elab_Body;
      E055 := True;
   end adainit;

   procedure adafinal is
   begin
      Do_Finalize;
   end adafinal;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure initialize (Addr : System.Address);
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");

      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_runapsvr");

      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Break_Start;
      Ada_Main_Program;
      Do_Finalize;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   ./tasks.o
   --   ./io.o
   --   ./aperiodic_tasks.o
   --   ./events.o
   --   ./deferred_servers.o
   --   ./background_servers.o
   --   ./polling_servers.o
   --   ./scenarii.o
   --   ./periodic_tasks.o
   --   ./runapsvr.o
   --   ./sporadic_servers.o
   --   ./aperiodic_servers.o
   --   -L./
   --   -L/usr/lib/gcc/i686-linux-gnu/4.6/adalib/
   --   -shared
   --   -lgnarl-4.6
   --   -lgnat-4.6
   --   -lpthread
--  END Object file/option list   

end ada_main;
