   M S B A M L   `   `   `  ????H  DWPF-LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF_LoginFormWPF_LoginForm  5   	       WPF_LoginForm.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fOfontawesome=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   'localclr-namespace:WPF_LoginForm  5   	   -   5          ? Title$  
MainWindow??5	   	   $	??700??6   $
??1200??6)    ? WindowStyle$
 None=?5
   	    ? 
ResizeMode$ 	CanResize=?5   	    ? AllowsTransparency . 
?????? .??5      ??  ?? CornerRadius$ 12??6   ??5   
   ?? 5       ?? ImageSource$ /Images/back.jpg??6    j? Stretch$
 None=?5      ._?5   
   ?? $ 10??6   $??2q?5       J? Opacity$
 0.95Q?5      ??5      ?? 5       ?? 
StartPoint$	 0,0&?6&   	 ?? EndPoint$		 1,1&?67   .??5      ?    winBorderColor4
 ? Color#
 [  6#    ? Offset$ 1Q?6X   5      ??5"      ?? 5#      $	 0,1&?6&   $		 1,0&?67   .??5$      ? $
 #ffa17f??6#   $ 0Q?63   ? 5%      $
 #00223e??6#   $ 1Q?63   5&      ._?5)      ?  ? ColumnDefinitions 5*      ?? 5+      $	??200 ?6'   ?? 5,      $??* ?6'   .+?50      ?? $ 	10,0,0,10??6   $??0??51      ??52      ?? 53      .??54      ? $
 #f0c27b??6+   $ 0Q?6;   ? 55      $
 #9bc5c3??6+   $ 1Q?6;   57      ._?5;      ?? .+?5<      ??  ?? Orientation$ 
Horizontal=?6%   $??35??5=   %   $??
15,25,0,40q?5>   %   .+?5A      ?? $??/Images/Thuong1.png??6$   $??30??6A   5D      ?? 5E      $??Nguyen Minh Thuong??6(     titleColor2#??[ 5F   (   $??Center=?5G   (   $??Center=?5H   (   $??Medium"?5I   (   $??10,0,0,0q?5J   '   $??15(?5K   (   5Q      5R      	? 5S        
menuButton#??[ 6&    
 color1
 ? Tag# [ 5T   &   .??5W      ?? $ 
Horizontal=?6)   .+?5X   "   !  FontAwesome.Sharp.IconImage  ?  ?FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=?68     menuButtonIcon#??[ 6E   ?? 5Y   "   $
??Home??6,     menuButtonText#??[ 68   5Z      5\      	? 5^      #??[ 6&    
 color2# [ 5_   &   .??5b      ?? $ 
Horizontal=?6)   .+?5c   "     $ 	UserGroup=?68   #??[ 6J   ?? 5d   "   $??Customer??6,   #??[ 6<   5e      5g      	? 5h      #??[ 6&    
 color3# [ 5i   &   .??5l      ?? $ 
Horizontal=?6)   .+?5m   "     $ Truck=?68   #??[ 6F   ?? 5n   "   $??Stock??6,   #??[ 69   5o      5q      	? 5r      #??[ 6&    
 color4# [ 5s   &   .??5v      ?? $ 
Horizontal=?6)   .+?5w   "     $ ShoppingBag=?68   #??[ 6L   ?? 5x   "   $
??Shop??6,   #??[ 68   5y      5{      	? 5|      #??[ 6&    
	 color5# [	 5}   &   .??5?      ?? $ 
Horizontal=?6)   .+?5?   "     $ Wallet=?68   #??[ 6G   ?? 5?   "   $??Credit??6,   #??[ 6:   5?      5?      	? 5?      #??[ 6&    

 color7# [
 5?   &   .??5?      ?? $ 
Horizontal=?6)   .+?5?   "     $ PieChart=?68   #??[ 6I   ?? 5?   "   $??Report??6,   #??[ 6:   5?      5?      	? 5?      #??[ 6&    
 color8# [ 5?   &   .??5?      ?? $ 
Horizontal=?6)   .+?5?   "     $ Tools=?68   #??[ 6F   ?? 5?   "   $??Settings??6,   #??[ 6<   5?      5?      5?      5?      ?? 5?      $ 	0,10,10,0??6   $??1??5?      ??5?      ?? 5?      .??5?      ? $
 #f0c27b??6+   $ 0Q?6;   ? 5?      $
 #efefbb??6+   $ 1Q?6;   5?      ._?5?      ?  ? RowDefinitions 5?      ?? 5?      $??25 ?6,   6:   ?? 5?      $??35 ?6,   6:   ?? 5?      $??* ?6,   69   .+?5?      ?? -   5         ??Name$ ControlBarPanel??5?   %   $??0??5?   %   $??RightToLeft=?5?   %   $ 
Horizontal=?5?   %   $??0,0,5,0q?5?   %   5?      5?      5?      5?      5?      5?      5?      