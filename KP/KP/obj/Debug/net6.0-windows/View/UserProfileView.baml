   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KP.ViewKP.View  5      +clr-namespace:KP.ViewModelKP.ViewModel  5      5clr-namespace:KP.CustomControlsKP.CustomControls  6;       KP.View.UserProfileView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:KP.View     5      0	viewModelclr-namespace:KP.ViewModel     5      :customcontrolsclr-namespace:KP.CustomControls     6;     � DataContext  5
      '  !KP.ViewModel.UserProfileViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   �� $��0��6      StUN#��[  6$   $��13(�6B   
��� � �$
��Wrap=�6c   ��6w   �� *
SuccessMsg+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5   
   $��1��6    �� Orientation$ Vertical=�6%   .+�5      �� $��Center=�6   .+�5      A� $
��66px��6   $
��66px��5      $��0 12 0 0q�5      ��5      �� 5       �� ImageSource 6%   �� *
UserAvatar+$ TwoWay=�$ PropertyChanged=�5      �� 5        
UserAvatar#��[ 6     AddPosterButton#��[ 5      ��5      �� *ChangeUserAvatarCommand+5       �� 5!      $��Center=�6   $ Vertical=�66   .+�5"      �� $��	16 0 0 20q�6   .+�5#      �� #���   6      UserName#���  6?   �� 5$      $ 
Horizontal=�6!   .+�5%      �� $,��&D:\2k2s\KP\KP\KP\images\icons\user.png��6    $
��16px��6P   6_   �� 5&      -   5         ��Name$ UserName��5&   D    �� 
CaretBrush
 �  ��$��5 0 0 0q�63   $��206px��5'   &    	 StInp#���  64   ��6T   �� *
UserName+$ TwoWay=�$ PropertyChanged=�6�   5(      5)      �� 5*      $��	16 0 0 20q�6   .+�5+      �� #���   6      UserMail#���  6?   �� 5,      $ 
Horizontal=�6!   .+�5-      �� $.��(D:\2k2s\KP\KP\KP\images\icons\arroba.png��6    $
��16px��6R   6a   �� 5.      -   5        $ UserMail��5.   D   
 �  ��$��5 0 0 0q�63   $��206px��5/   &   #���  64   ��6T   �� *	UserEmail+$ TwoWay=�$ PropertyChanged=�6�   50      51      �� 52      $��	16 0 0 20q�6   .+�53      �� #���   6      OldPassword#���  6?   �� 54      $ 
Horizontal=�6!   .+�55      �� $,��&D:\2k2s\KP\KP\KP\images\icons\lock.png��6    $
��16px��6P   6_   +   %KP.CustomControls.BindablePasswordBox  56         Password 6=   �� *UserPassword+$ TwoWay=�$ PropertyChanged=�57      58      �� 59      $��	16 0 0 20q�6   .+�5:      �� #���   6      NewPassword#���  6?   �� 5;      $ 
Horizontal=�6!   .+�5<      �� $,��&D:\2k2s\KP\KP\KP\images\icons\lock.png��6    $
��16px��6P   6_     5=       6=   �� *NewUserPassword+$ TwoWay=�$ PropertyChanged=�5>      5?      �� 5@      $��	16 0 0 20q�6   .+�5A      �� #���   6      RepeatPassword#���  6?   �� 5B      $ 
Horizontal=�6!   .+�5C      �� $,��&D:\2k2s\KP\KP\KP\images\icons\lock.png��6    $
��16px��6P   6_     5D       6=   �� *RepeatNewUserPassword+$ TwoWay=�$ PropertyChanged=�5E      5F      �� 5G      $��Center=�5H      
���  ��$��12(�5J      $��
MontSerrat)�5K      $��Medium"�5L      $
��Wrap=�5M      ��5G      �� *
ErrorMsg+$ TwoWay=�$ PropertyChanged=�5M      �� 5N      #��[ 6   $��150px��5O       	 UpdateUserInfo#��[	 5P      ��5Q      �� *ChangeUserProfileDataCommand+5R      5S      5U      5V      