using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace WPF_LoginForm.ViewModel
{

    /* 
     abstract is only used to inheritate, inotifypropertychanged is in system.ComponentModel
    => implement interface will create a line code
     
     
     */
    public abstract class ViewModelBase_INC_ : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;


        /*
         create a method to raise an event when property changes 
         */
        public void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


        }


    }
}