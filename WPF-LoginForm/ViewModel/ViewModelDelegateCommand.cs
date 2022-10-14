using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace WPF_LoginForm.ViewModel
{
    class ViewModelDelegateCommand : ICommand
    {
        //Fields to execute Commands, use readonly because Action is a complicated variable type, can not use const 
        private readonly Action<object> _executeAction;

        // Predicate is used to see whether these object can meet the criterias, if do, return true
        private readonly Predicate<object> _canExecuteAction;

        //Quick create the constructor that has action and predicate parameters
        public ViewModelDelegateCommand(Action<object> executeAction, Predicate<object> canExecuteAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = canExecuteAction;
        }
        //create another constructor that has 1 parameter because not all the commands should execute, so the canExecuteAction is null
        public ViewModelDelegateCommand(Action<object> executeAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = null;
        }



        // ICommand => Implement interfaces
        public event EventHandler CanExecuteChanged
        //subcribe or unsubcribe, we use CommandManager

        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }


        //Methods 
        public bool CanExecute(object parameter)
        {
            return _canExecuteAction== null ? true : _canExecuteAction(parameter);
        }

        public void Execute(object parameter)
        {
            _executeAction(parameter);
        }
    }
}
