   M S B A M L   `   `   `  ����E  AEmployee27, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Employee27
Employee27  5   	       Employee27.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Employee27     5   	   -   5          �Name$  	winMain27��5   	    � Title$. (Employee User Interface - Jay Rowland NN��5   	   $	��450��6:   $	��800��6G   $
��Bold"�6S   .��5	      � -   5         �Name$ MainWindow1��5	      .+�5
   
   �� -   5         ��Name$ lbl27_server��5
      $��Server Instance��6&   $
��Left=�6@   $��	28,41,0,0q�6[   $	��Top=�6n   �� 5   
   -   5         ��Name$ txt27_server��5      $
��Left=�6(   $��23��6C   $��
175,45,0,0q�6O    �� TextWrapping$
 Wrap=�6c   $/��)IN-CSCI-MSSQL.ADS.IU.EDU\SQLSERVER2017DEV��6w   $	��Top=�6�   $	��336��6�    J� RenderTransformOrigin$ 0.508,0.413&�6�   �� 5   
   -   5        $ lbl27_userName��5      $��	User Name��6(   $
��Left=�6<   $��	28,72,0,0q�6W   $	��Top=�6j   �� 5   
   -   5        $ txt27_userName��5      $
��Left=�6*   $��23��6E   $��
175,76,0,0q�6Q   $
 Wrap=�6e   $��27Row27��6y   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ lbl27_password��5      $��Password��6(   $
��Left=�6;   $��
28,103,0,0q�6V   $	��Top=�6j   G� 5   
   $
��Left=�6   $	��Top=�61   G� 5   
   -   5         G�Name$ pwb27_password��5      $
��Left=�6.   $��175,111,0,0q�6I   $	��Top=�6^    G� Password$ CSCI44300-Qovhem8��6v   $	��120��6�   �� 5   
   -	   5        $ lbl27_query��5      $��Query��6%   $
��Left=�65   $	��Top=�6P   $��
28,134,0,0q�6h   �� 5   
   -
   5        $ txt27_query��5      $
��Left=�6'   $��58��6B   $��175,146,0,0q�6N   $
 Wrap=�6c   $	��Top=�6w   $	��336��6�   	 �� AcceptsReturn	 . "
 �� VerticalScrollBarVisibility$

 Auto=�6�   �� 5   
   -   5        $ lbl27_message��5      $��Message��6'   $
��Left=�69   $��
28,214,0,0q�6T   $	��Top=�6h   �� 5   
   -   5        $ txt27_message��5      $
��Left=�6)   $��22��6D   $��175,218,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��120��6�   �� 5   
   -   5        $ lbl27_result��5      $��Result��6&   $
��Left=�67   $��
28,267,0,0q�6R   $	��Top=�6f   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dg27_result��5      $
��Left=�6(   $	��125��6C   $��175,267,0,0q�6P   $	��Top=�6e   $	��257��6}   �� 5   
   -   5         ��Name$ btn27_clearResult��5      $��Clear��6,   $
��Left=�6<   $��528,372,0,0q�6W   $	��Top=�6l   $��75��6�   6�   �� 5   
   -   5        $ btn27_clearMessage��5      $��Clear��6-   $
��Left=�6=   $��313,218,0,0q�6X   $	��Top=�6m   $��75��6�   6�   �� 5   
   -   5        $ 
btn27_done��5      $
��Done��6%   $
��Left=�64   $	��Top=�6O   $��75��6g   $��621,372,0,0q�6r   6�   �� 5   
   -   5        $ btn27_executeQuery��5      $��Execute��6-   $
��Left=�6?   $��528,165,0,0q�6Z   $	��Top=�6o   $��75��6�   6�   �� 5   
   -   5        $ btn27_clearQuery��5      $��Clear��6+   $
��Left=�6;   $	��Top=�6V   $��75��6n   $��621,165,0,0q�6y   6�   5      5      