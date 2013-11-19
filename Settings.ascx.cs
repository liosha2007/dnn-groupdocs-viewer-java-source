﻿/*
' Copyright (c) 2013  Christoc.com
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Exceptions;

namespace Christoc.Modules.dnn_groupdocs_viewer_java
{
    /// -----------------------------------------------------------------------------
    /// <summary>
    /// The Settings class manages Module Settings
    /// 
    /// Typically your settings control would be used to manage settings for your module.
    /// There are two types of settings, ModuleSettings, and TabModuleSettings.
    /// 
    /// ModuleSettings apply to all "copies" of a module on a site, no matter which page the module is on. 
    /// 
    /// TabModuleSettings apply only to the current module on the current page, if you copy that module to
    /// another page the settings are not transferred.
    /// 
    /// If you happen to save both TabModuleSettings and ModuleSettings, TabModuleSettings overrides ModuleSettings.
    /// 
    /// Below we have some examples of how to access these settings but you will need to uncomment to use.
    /// 
    /// Because the control inherits from dnn_groupdocs_viewer_javaSettingsBase you have access to any custom properties
    /// defined there, as well as properties from DNN such as PortalId, ModuleId, TabId, UserId and many more.
    /// </summary>
    /// -----------------------------------------------------------------------------
    public partial class Settings : dnn_groupdocs_viewer_javaModuleSettingsBase
    {
        #region Base Method Implementations

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// LoadSettings loads the settings from the Database and displays them
        /// </summary>
        /// -----------------------------------------------------------------------------
        public override void LoadSettings()
        {
            try
            {
                if (Page.IsPostBack == false)
                {
                    if (Settings.Contains("Url"))
                    {
                        txtUrl.Text = Settings["Url"].ToString();
                    }
                    if (Settings.Contains("Width"))
                    {
                        txtWidth.Text = Settings["Width"].ToString();
                    }
                    if (Settings.Contains("Height"))
                    {
                        txtHeight.Text = Settings["Height"].ToString();
                    }
                    if (Settings.Contains("DefaultFileName"))
                    {
                        txtDefaultFileName.Text = Settings["DefaultFileName"].ToString();
                    }
                    if (Settings.Contains("UseHttpHandlers"))
                    {
                        ckbUseHttpHandlers.Checked = Boolean.Parse(Settings["UseHttpHandlers"].ToString());
                    }
                }
            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// UpdateSettings saves the modified settings to the Database
        /// </summary>
        /// -----------------------------------------------------------------------------
        public override void UpdateSettings()
        {
            try
            {
                ModuleController modules = new ModuleController();

                //the following are two sample Module Settings, using the text boxes that are commented out in the ASCX file.
                //module settings
                modules.UpdateModuleSetting(ModuleId, "Url", txtUrl.Text);
                modules.UpdateModuleSetting(ModuleId, "Width", txtWidth.Text);
                modules.UpdateModuleSetting(ModuleId, "Height", txtHeight.Text);
                modules.UpdateModuleSetting(ModuleId, "DefaultFileName", txtDefaultFileName.Text);
                modules.UpdateModuleSetting(ModuleId, "UseHttpHandlers", ckbUseHttpHandlers.Checked.ToString().ToLower());
            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        #endregion
    }
}