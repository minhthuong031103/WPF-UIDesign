using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using WPF_LoginForm.Model;
using WPF_LoginForm.Respositories;

namespace WPF_LoginForm.ViewModel
{
   public class LoginViewModel:ViewModelBase_INC_   //inheritated base viewmodel
    {
        //Fields
        // define properties    
        private string _username;
        private SecureString _password;    //for secured purposes 
        private string _errorMessage;
        private bool _isViewVisible = true;

        private InterfaceUserRespository userRespository;
        //select these fields and then encapsulable fields, auto create constructor 
        //properties
        public string Username 
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
        public SecureString Password 
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {
            get
            {
                return _errorMessage;
            }
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible 
        { 
            get
            {
                return _isViewVisible;
            }
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }

        // create commands
        public ICommand LoginCommand
        {
            get;
        }
        public ICommand RecoverPasswordCommand
        {
            get;
        }
        public ICommand ShowPasswordCommand
        {
            get;
        }
        public ICommand RememberPasswordCommand
        {
            get;
        }
        //create constructor for the LoginViewModel
        public LoginViewModel()
        {
            userRespository = new UserRespository();
            LoginCommand = new ViewModelDelegateCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelDelegateCommand(p=>ExecuteRecoverPasswordCommand("",""));
            ShowPasswordCommand = new ViewModelDelegateCommand(ExecuteShowPasswordCommand);
        }

        private void ExecuteLoginCommand(object obj)
        {
            var isValidUser = userRespository.AuthenticateUser(new System.Net.NetworkCredential(Username, Password));
            if(isValidUser)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(Username), null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "Invalid username or password!!!";
            }

        }

        private void ExecuteShowPasswordCommand(object obj)
        {
            throw new NotImplementedException();
        }

        private void ExecuteRecoverPasswordCommand(string username, string email)
        {
            
           
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool valid;
            if (string.IsNullOrWhiteSpace(Username) == true || Username.Length < 3 || Password == null || Password.Length < 3)
                valid = false;
            else valid = true;
            return valid;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       


        }

       
    }
}
