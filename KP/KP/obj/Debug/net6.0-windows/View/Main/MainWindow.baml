   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:KP.ViewModelKP.ViewModel  5   	   !clr-namespace:KP.ViewKP.View  5   	       KP.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFFA=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   *	viewModelclr-namespace:KP.ViewModel  5   	   !localclr-namespace:KP.View  5   	     � Title$  
MainWindow��5
   	   $	��700��5   	   $
��1300��6    � WindowStyle$
 None=�5   	   
������  � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	    � DataContext 5      $   KP.ViewModel.ManePageViewModel  5   
    � 	Resources 5       �� DataType   KP.ViewModel.HomeViewModel   KP.View.HomeView#  KP.ViewModel.CatalogViewModel   KP.View.CatalogView  KP.ViewModel.AddViewModel   KP.View.AddView'  !KP.ViewModel.UserProfileViewModel	   KP.View.UserProfileView#
  KP.ViewModel.SettingViewModel   KP.View.SettingView!  KP.ViewModel.FilmsViewModel   KP.View.FilmsView!  KP.ViewModel.LikesViewModel   KP.View.LikesView&   KP.ViewModel.WatchLaterViewModel   KP.View.WatchLaterView$  KP.ViewModel.AllFilmsViewModel   KP.View.AllFilmsView��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)(�� �     5!      *,
 +)(�� �     5$      *, +)(�� ,    5'      *, +)(�� ^    5*      *, +)(�� �    5-      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5      	  5       �� 5!   
   " 
 6   .R�5"        5#      �� 5$   
   "  6   .R�5%        5&      �� 5'   
   "  6   .R�5(        5)      �� 5*   
   "  6   .R�5+        5,      �� 5-   
   "  6   .R�5.        5/      50      .��51      ��  �� CornerRadius$ 10��6    J� Opacity$ 1Q�6   $��3q�6+      
LoginStyle#���   6?   ._�52   
   � 	 � ColumnDefinitions	 53      �� 54      $��240px �6#   �� 55      .+�57      ��   navigationStyle#��[ 6   ._�58      �� .+�59      �� 
 �� Orientation$
 
Horizontal=�6!   $��70��5:   !   $��
15 25 0 10q�5;   !   .+�5<      �� $,��&D:\2k2s\KP\KP\KP\images\Logo\test6.png��6    $��80��6P   $��80��6[   5>      	� 5?        
menuButton#��[ 6"   
 � Tag$ #eb346e��5@   "    d� 	IsChecked$
 TrueY�5B   "   ��5A   "   �� *ShowHomeViewCommand+.��5C      �� $
 
Horizontal=�6%   .+�5D      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�6+     menuButtonIconStyle#��[ 67   �� 5E        NavHome#���  6(     menuButtonText#��[ 6I   5F      5H      	� 5I      #��[ 6"   $ #b3047e��5J   "   ��5K   "   �� *ShowCatalogViewCommand+.��5L      �� $
 
Horizontal=�6%   .+�5M        $ Ticket=�6+   #��[ 69   �� 5N        
NavCatalog#���  6(   #��[ 6L   5O      5Q      	� 5R      #��[ 6"   $ #c9640c��5S   "   ��5T   "   �� *ShowFilmsCommand+.��5U      �� $
 
Horizontal=�6%   .+�5V        $
 Film=�6+   #��[ 67   �� 5W        NavCatalogFilms#���  6(   #��[ 6Q   5X      5Z      	� 5[      #��[ 6"   $ #bfac1f��5\   "   ��5]   "   �� *ShowAllFilmsCommand+.��5^      �� $
 
Horizontal=�6%   .+�5_        $ Database=�6+   #��[ 6;   �� 5`       	 NavDB#���  6(   #��[ 6G   5a      5c      	� 5d      #��[ 6"   $ White��5e   "   ��5f   "   �� *ShowAddViewCommand+.��5g      �� $
 
Horizontal=�6%   .+�5h        $	 Add=�6+   #��[ 67   �� 5i       
	 NavAdd#��� 	 6(   #��[ 6H   5j      5l      	� 5m      #��[ 6"   $	 Red��5n   "   ��5o   "   �� *ShowLikedFilmsCommand+.��5p      �� $
 
Horizontal=�6%   .+�5q        $ Heart=�6+   #��[ 68   �� 5r       
 NavLiked#��� 
 6(   #��[ 6J   5s      5u      	� 5v      #��[ 6"   $ Black��5w   "   ��5x   "   �� *ShowWatchLagerFilmsCommand+.��5y      �� $
 
Horizontal=�6%   .+�5z        $ Clock=�6+   #��[ 68   �� 5{        NavWatchLater#���  6(   #��[ 6O   5|      5}      	� 5~      #��[ 6"   $ #3e65f7��5   "   ��5�   "   �� *ShowSettingsCommand+.��5�      �� $
 
Horizontal=�6%   .+�5�        $
 Gear=�6+   #��[ 67   �� 5�        NavSettings#���  6(   #��[ 6M   5�      5�      5�      5�      � 5�      $��1��6    � RowDefinitions 5�      �� 5�      $
��35px �6$   �� 5�      $
��35px �6$   �� 5�      .+�5�      �� -   5         ��Name$ 	MainPanel��5�      $��0��5�      $��0 0 7 0q�5�      $
 
Horizontal=�5�      $��RightToLeft=�5�      .+�5�      �� -   5         ��Name$ btnClose��5�        mainMenuButton#��[ 5�      $ #FB539B��5�      .��5�        $ Close=�6'     mainMenuButtonIconStyle#��[ 64   $
 Gray��6e   5�      �� 5�      -   5        $ btnMax��5�      #��[ 5�      $ #FB539B��5�      .��5�        $ WindowMaximize=�6'   #��[ 6>   $
 Gray��6o   5�      �� 5�      -   5        $ btnMin��5�      #��[ 5�      $ #FB539B��5�      .��5�        $ WindowMinimize=�6'   $��13��6=   #��[ 6H   $
 Gray��6y   5�      5�      � 5�      $��1��6   	 5�      �� 5�      �� 5�      .+�5�      �� $��0��6!   $
 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��6E   $��20��5�   '      
Foreground �#D5CFF5$��	35 0 10 0q�5�   '    5�   '   �� *IconOfHeader+5�   '   �� 5�      ���#D5CFF5$��16(�5�   $   $��
Montserrat)�5�   $   $��Medium"�5�   $   $��Center=�5�   $   ��5�   $   �� *CaptionOfHeader+5�   $   5�      �� 5�      $��1��6!   $
 
Horizontal=�5�   !   $��RightToLeft=�5�   !   $��Center=�5�   !   $��0 0 10 0q�5�   !   .+�5�      ��   AccountButton#��[ 6!   $ #E285DE��6H   ��5�   !   �� *ShowUserProfileCommand+.��5�        $��12��6+   $��12��67   $ 	AngleDown=�6B     AccountButtonIconStyle#��[ 6S   5�      �� 5�      ���#9497CD$��
Montserrat)�5�   $   $��12(�5�   $   $��Center=�5�   $   ��5�   $   �� *CurrentUserProfile.Login+5�   $   A� 5�      $
��33px��6"   $
��33px��60   ���#784DFD$��2��5�   "   $��	10 0 10 0q�5�   "   ��5�      �� 5�   "    �� ImageSource 6-   �� *CurrentUserProfile.Avatar+5�      �� 5�      #��[ 6!   $ #4ADAEC��6H   .��5�        $ Clock=�6+   $��16��68   $��16��6D   #��[ 6O   5�      �� 5�      #��[ 6!   $ #FF47CA��6H   .��5�        $ Envelope=�6+   $��16��6;   $��16��6G   #��[ 6R   5�      �� 5�      #��[ 6!   $ #78DBE2��6H   .��5�        $
 BELL=�6+   $��16��67   $��16��6C   #��[ 6N   5�      5�      5�      �� 5�      $��3��5�   !   $��25q�5�   !   ��5�   !   �� *CurrentChildView+5�   !   5�      5�      5�      5�      