.class public final Lcom/google/android/calendar/api/LoadDetailsConstants;
.super Ljava/lang/Object;
.source "LoadDetailsConstants.java"


# static fields
.field public static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final CALENDAR_CONTRACT_CALENDARS_IS_PRIMARY:Ljava/lang/String;

.field public static final CALENDAR_LOCAL_ID_PROJECTION:[Ljava/lang/String;

.field public static final COLORS_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

.field public static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final JB:Z

.field private static final JB_MR1:Z

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field public static final SINGLE_CALENDAR_SELECTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB:Z

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB_MR1:Z

    .line 35
    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "dtstart"

    aput-object v0, v3, v2

    const-string v0, "dtend"

    aput-object v0, v3, v1

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "title"

    aput-object v0, v3, v7

    const-string v0, "description"

    aput-object v0, v3, v8

    const/4 v0, 0x5

    const-string v4, "eventLocation"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "allDay"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "hasAlarm"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "calendar_id"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "duration"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "eventTimezone"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "rrule"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "_sync_id"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "availability"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "accessLevel"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "ownerAccount"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "hasAttendeeData"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "original_sync_id"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "organizer"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "guestsCanModify"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "original_id"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "eventStatus"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "eventColor_index"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "calendar_access_level"

    aput-object v4, v3, v0

    const/16 v4, 0x18

    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB:Z

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "customAppPackage"

    :goto_2
    aput-object v0, v3, v4

    const/16 v4, 0x19

    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB:Z

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "customAppUri"

    :goto_3
    aput-object v0, v3, v4

    const/16 v0, 0x1a

    const-string v4, "sync_data9 as sync_data9"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "eventEndTimezone"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "sync_data8 as sync_data8"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "account_name"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string v4, "account_type"

    aput-object v4, v3, v0

    sput-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 72
    const-class v0, Ljava/lang/String;

    sget-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "begin"

    aput-object v5, v4, v2

    const-string v5, "end"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/calendar/builders/ArrayBuilder;->concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "minutes"

    aput-object v3, v0, v1

    const-string v3, "method"

    aput-object v3, v0, v6

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB_MR1:Z

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "isPrimary"

    :goto_4
    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDAR_CONTRACT_CALENDARS_IS_PRIMARY:Ljava/lang/String;

    .line 144
    const/16 v0, 0x13

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "name"

    aput-object v0, v3, v1

    const-string v0, "calendar_displayName"

    aput-object v0, v3, v6

    const-string v0, "ownerAccount"

    aput-object v0, v3, v7

    const-string v0, "calendar_color"

    aput-object v0, v3, v8

    const/4 v0, 0x5

    const-string v4, "calendar_color_index"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "canOrganizerRespond"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "calendar_access_level"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "visible"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "sync_events"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "maxReminders"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "allowedReminders"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "allowedAttendeeTypes"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "allowedAvailability"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "account_name"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "account_type"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "calendar_location"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "calendar_timezone"

    aput-object v4, v3, v0

    const/16 v4, 0x12

    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB_MR1:Z

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "(COALESCE(isPrimary, ownerAccount=account_name)) AS isPrimary"

    :goto_5
    aput-object v0, v3, v4

    sput-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 166
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDAR_LOCAL_ID_PROJECTION:[Ljava/lang/String;

    .line 190
    const-string v0, "%s=? AND %s=? AND %s=?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "ownerAccount"

    aput-object v4, v3, v2

    const-string v4, "account_name"

    aput-object v4, v3, v1

    const-string v4, "account_type"

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->SINGLE_CALENDAR_SELECTION:Ljava/lang/String;

    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "account_name"

    aput-object v3, v0, v1

    const-string v3, "account_type"

    aput-object v3, v0, v6

    const-string v3, "color"

    aput-object v3, v0, v7

    const-string v3, "color_index"

    aput-object v3, v0, v8

    const/4 v3, 0x5

    const-string v4, "color_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->COLORS_PROJECTION:[Ljava/lang/String;

    .line 209
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v2

    const-string v3, "value"

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    .line 219
    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "attendeeName"

    aput-object v0, v3, v1

    const-string v0, "attendeeEmail"

    aput-object v0, v3, v6

    const-string v0, "attendeeRelationship"

    aput-object v0, v3, v7

    const-string v0, "attendeeStatus"

    aput-object v0, v3, v8

    const/4 v1, 0x5

    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB:Z

    if-eqz v0, :cond_6

    .line 225
    const-string v0, "attendeeIdentity"

    :goto_6
    aput-object v0, v3, v1

    const/4 v1, 0x6

    sget-boolean v0, Lcom/google/android/calendar/api/LoadDetailsConstants;->JB:Z

    if-eqz v0, :cond_7

    .line 226
    const-string v0, "attendeeIdNamespace"

    :goto_7
    aput-object v0, v3, v1

    const/4 v0, 0x7

    const-string v1, "attendeeType"

    aput-object v1, v3, v0

    sput-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 21
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 22
    goto/16 :goto_1

    .line 60
    :cond_2
    const-string v0, "_id"

    goto/16 :goto_2

    .line 61
    :cond_3
    const-string v0, "_id"

    goto/16 :goto_3

    .line 142
    :cond_4
    const-string v0, "isPrimary"

    goto/16 :goto_4

    .line 163
    :cond_5
    const-string v0, "(ownerAccount=account_name) AS isPrimary"

    goto/16 :goto_5

    .line 225
    :cond_6
    const-string v0, "_id"

    goto :goto_6

    .line 226
    :cond_7
    const-string v0, "_id"

    goto :goto_7
.end method
