.class public final Lcom/android/calendar/event/LoadDetailsConstants;
.super Ljava/lang/Object;
.source "LoadDetailsConstants.java"


# static fields
.field public static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final COLORS_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_INDEX_ACCOUNT_NAME:I

.field public static final EVENT_INDEX_ACCOUNT_TYPE:I

.field public static final EVENT_INDEX_HABIT_ID_AND_TYPE:I

.field public static final EVENT_INDEX_SELF_ATTENDEE_STATUS:I

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_PROJECTION_FOR_EXTERNAL_INTENT:[Ljava/lang/String;

.field public static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string v1, "eventLocation"

    aput-object v1, v0, v7

    const-string v1, "allDay"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "eventColor"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "customAppUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sync_data9 as sync_data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 100
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "sync_data8 as sync_data8"

    aput-object v3, v2, v4

    const-string v3, "account_name"

    aput-object v3, v2, v5

    const-string v3, "account_type"

    aput-object v3, v2, v6

    const-string v3, "selfAttendeeStatus"

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/builders/ArrayBuilder;->concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION_FOR_EXTERNAL_INTENT:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_HABIT_ID_AND_TYPE:I

    .line 109
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_NAME:I

    .line 110
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_TYPE:I

    .line 111
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_SELF_ATTENDEE_STATUS:I

    .line 113
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "minutes"

    aput-object v1, v0, v5

    const-string v1, "method"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 131
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v5

    const-string v1, "ownerAccount"

    aput-object v1, v0, v6

    const-string v1, "calendar_color"

    aput-object v1, v0, v7

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "COALESCE(isPrimary,account_name=ownerAccount) AS isPrimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "color"

    aput-object v1, v0, v7

    const-string v1, "color_index"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->COLORS_PROJECTION:[Ljava/lang/String;

    .line 183
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    .line 192
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "attendeeName"

    aput-object v1, v0, v5

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v6

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "attendeeIdentity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attendeeIdNamespace"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void
.end method
