﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurcellCompliance.Helpers
{
    /// <summary>
    /// Summary description for PushNotificationData
    /// </summary>
    public class PushNotificationData
    {

        public DeviceType DeviceType { get; set; }

        public int DeviceTypes { get; set; }

        public string DevicePushToken { get; set; }

        public string Message { get; set; }

        public string AlertMessage { get; set; }

        public string JsonData { get; set; }

        public bool IsAlertType { get; set; }

    }
}