   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:KP.ViewModel.LoginViewModelKP.ViewModel.LoginViewModel  5   	   -clr-namespace:KP.View.loginKP.View.login  5   	   5clr-namespace:KP.CustomControlsKP.CustomControls  5	   	       KP.View.login.login   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?	viewModel)clr-namespace:KP.ViewModel.LoginViewModel     5   	   -localclr-namespace:KP.View.login     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFFA=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   4customcontrolsclr-namespace:KP.CustomControls  5	   	   -   5          � Title$  login��5   	   $	��550��6   $	��800��6$    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      0  *KP.ViewModel.LoginViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      �� 
 �� CornerRadius$
 37��6   ��5   
   �� 5       �� ImageSource$5 /D:\2k2s\KP\KP\KP\images\LoginBackground\qwe.jpg��6    j� Stretch$
 Fill=�6W   ._�5    
   ��   
LoginStyle#���  6   ._�5!      �  � RowDefinitions 5"      �� 5#      $��30 �6$   �� 5$      .+�5&      � $��0��6    � ColumnDefinitions 5'      �� 5(      �� 5)      $��25 �6+   �� 5*      $��25 �6+   �� 5+      $��7 �6+   .+�5-      ��   TBLogIn#���  6     
 log_in#���  6B   �� 5.      -   5         ��Name$ BtnMin��5.      $��-��6-   $��1��69     CButton#���  6I   6k   �� 5/      -   5        $ BtnClose��5/      $��x��6/   $��2��6;   #���  6K   ���#DA34EA6�   50      �� 51      $��1��6   $	��250��6*    �� Orientation$ Vertical=�66   $��0,35,0,0q�6M   .+�52      �� $,��&D:\2k2s\KP\KP\KP\images\Logo\test4.png��6   $	��140��6L   $	��140��6X   �� 54       	 StDev#���  6      tagline#���  6@   6c   �� 55      $��16 0 0 0q�6!   .+�56      ��   StUN#���  6$     UserName#���  6C   6g   �� 57      $ 
Horizontal=�6%   .+�58      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ UserAlt=�6+   $��16��6:      
Foreground
 �����6^   �� 59      -   5         ��Name$ UserName��59   H    �� 
CaretBrush
 �  ��$��5 0 0 0q�67   $��206px��5:   &    		 StInp#��� 	 64   ��6T   �� *
Username+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5;      5<      �� 5E      $��16 0 0 0q�6!   .+�5F      �� #���  6$    
 Password#��� 
 6C   6g   �� 5G      $ 
Horizontal=�6%   .+�5H        $
 Lock=�6+   $��14��67   
 �����6B   +   %KP.CustomControls.BindablePasswordBox  5I         Password 6A   �� *
Password+$ TwoWay=�$ PropertyChanged=�5J      5L      �� 5M      
���  ��$��12(�5O       $��
MontSerrat)�5P       $��0 19 0 0q�5Q       $��Medium"�5R       $��Wrap =�5S       ��5M       �� *ErrorMessage+5S       �� 5U       	 LGBUT#��[ 6   #���  5V      ��5W      �� *LoginCommand+5]      5a      5b      5c      5e      