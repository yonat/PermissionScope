//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import CoreLocation
import AddressBook
import AVFoundation
import Photos
import EventKit
import CoreBluetooth
import CoreMotion
import CloudKit
import Accounts

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

@objcMembers public class NotificationsPermission: NSObject, Permission {
    public let type: PermissionType = .notifications
    public let notificationCategories: Set<UIUserNotificationCategory>?
    
    public init(notificationCategories: Set<UIUserNotificationCategory>? = nil) {
        self.notificationCategories = notificationCategories
    }
}

@objcMembers public class LocationWhileInUsePermission: NSObject, Permission {
    public let type: PermissionType = .locationInUse
}

@objcMembers public class LocationAlwaysPermission: NSObject, Permission {
    public let type: PermissionType = .locationAlways
}

@objcMembers public class ContactsPermission: NSObject, Permission {
    public let type: PermissionType = .contacts
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void

@objcMembers public class EventsPermission: NSObject, Permission {
    public let type: PermissionType = .events
}

@objcMembers public class MicrophonePermission: NSObject, Permission {
    public let type: PermissionType = .microphone
}

@objcMembers public class CameraPermission: NSObject, Permission {
    public let type: PermissionType = .camera
}

@objcMembers public class PhotosPermission: NSObject, Permission {
    public let type: PermissionType = .photos
}

@objcMembers public class RemindersPermission: NSObject, Permission {
    public let type: PermissionType = .reminders
}

@objcMembers public class BluetoothPermission: NSObject, Permission {
    public let type: PermissionType = .bluetooth
}

@objcMembers public class MotionPermission: NSObject, Permission {
    public let type: PermissionType = .motion
}
