   M S B A M L   `   `   `  ����B  >Registy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Registy.PagesRegisty.Pages  5      (    "Registy.Pages.ApplyAppointmentPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:Registy.Pages     5        N� Title$  ApplyAppointmentPage��5	      .��5      �    BackgroundColor#��[  6   .+�5   
   �� .+�5      � .+�5      �� 	 �� X1$	 174��6   	 �� Y1$ 40��5      	 �� X2$
 1026��5      	 �� Y2$ 40��5      
���   �$��2��5      A� 5      -   5         A�Name$ StartElipse��5      $��48��5      $��48��5      $��0��5      $	��Top=�5      
���   �$��2��5      $��Center=�5        PassedStateColor#��[ 5      $��0, 16, 900, 16q�5      A� 5       -   5        $ 	TwoElipse��5       $��48��5!      
���   �$��2��5#      $��48��5$      $��0��5%      $	��Top=�5&      $��Center=�5'      #��[ 5(      $��0 16 450 16q�5)      A� 5+      -   5        $ ThreeElipse��5+      $��48��5,      
���   �$��2��5.      $��48��5/      $��0��50      $	��Top=�51      $��Center=�52      #��[ 53      $��0, 16q�54      A� 56      -   5        $ 
FourElipse��56      $��48��57      $��48��58      $��0��59      
���   �$��2��5;      $	��Top=�5<      $��Center=�5=        CurrentStateColor#��[ 5>      $��450, 16, 0, 16q�5?      A� 5A      -   5        $ 
FiveElipse��5A      $��48��5B      $��48��5C      $��0��5D      
���   �$��2��5F      $	��Top=�5G      $��Center=�5H        ClosedStateColor#��[ 5I      $��900, 16 0, 16q�5J      5K      �� 5M      $-��'Подтверждение записи��6   $��42(�5N      $��Center=�5O      �� 5Q      $��64, 32q�6    � 	Resources 5R       �� 
TargetType �� Property	 �� Value��%Y   '��       �� 5S      " ��6   .�5T      ��  � ��$	 0, 24q�5U   !   5V      5W      .+�5X      �� 
 �� Orientation$
 
Horizontal=�6   .+�5Y      �� $��Дата приёма: ��6    �� 5Z      -   5         ��Name$ AppointmentDateTextBlock��5[       $
��Bold"�5Z       5[       5\      �� 5^      $
 
Horizontal=�6   .+�5_      �� $��Время приёма: ��6    �� 5`      -   5        $ AppointmentTimeTextBlock��5a       $
��Bold"�5`       5a       5b      �� 5d      $
 
Horizontal=�6   .+�5e      �� $��Кабинет: ��6    �� 5f      -   5        $ CabinetTextBlock��5g       $
��Bold"�5f       5g       5h      �� 5j      $
 
Horizontal=�6   .+�5k      �� $"��Специальность: ��6    �� 5l      -	   5        $# DoctorSpecializationTextBlock��5m       $
��Bold"�5l       5m       5n      �� 5p      $
 
Horizontal=�6   .+�5q      �� $��
Врач: ��6    �� 5r      -
   5        $ DoctorNameTextBlock��5s       $
��Bold"�5r       5s       5t      �� 5v      $
 
Horizontal=�6   $��Center=�66   .+�5w      �� -   5        $��Подтвердить��5w      $��24, 0q�63   $��32(�6C   $��96��6Q   $��0, 0, 24, 0q�6]   6r   �� 5x      -   5        $��Передумал��5x      $��32(�61   $��24, 0q�6?   $��24, 0, 0, 0q�6O   6d   5y      5z      5{      5|      5}      