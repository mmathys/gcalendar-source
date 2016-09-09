.class public Lcom/android/calendar/event/CalendarEventModel;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;,
        Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;,
        Lcom/android/calendar/event/CalendarEventModel$Attendee;
    }
.end annotation


# instance fields
.field public transient mAccessCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessLevel:I

.field public mAllDay:Z

.field public transient mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

.field public mAttendeesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailability:I

.field public mCalendarAccessLevel:I

.field public mCalendarAccountName:Ljava/lang/String;

.field public mCalendarAccountType:Ljava/lang/String;

.field public mCalendarAllowedAttendeeTypes:Ljava/lang/String;

.field public mCalendarAllowedAvailability:Ljava/lang/String;

.field public mCalendarAllowedConferenceType:Ljava/lang/String;

.field public mCalendarAllowedReminders:Ljava/lang/String;

.field private mCalendarColor:I

.field private mCalendarColorInitialized:Z

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mCalendarMaxReminders:I

.field public mCalendarOwnerAccount:Ljava/lang/String;

.field public mClearDefaultReminders:Z

.field public mCustomAppPackage:Ljava/lang/String;

.field public mCustomAppUri:Ljava/lang/String;

.field public transient mCustomEvent:Lcom/android/calendar/event/CustomEvent;

.field public mDbDuration:Ljava/lang/String;

.field public mDbEnd:J

.field public mDbStart:J

.field public mDescription:Ljava/lang/String;

.field public mDuration:Ljava/lang/String;

.field public mEnd:J

.field public mEndTimeUnspecified:Z

.field private mEventColor:I

.field private mEventColorInitialized:Z

.field public mEventColorKey:I

.field public mEventStatus:I

.field public mExtras:Lcom/android/calendar/event/EventExtras;

.field public mExtrasBitmask:I

.field public mFallbackHangoutLink:Ljava/lang/String;

.field public mGuestsCanInviteOthers:Z

.field public mGuestsCanModify:Z

.field public mHasAlarm:Z

.field public mHasAttendeeData:Z

.field public mHasSmartMail:Z

.field public mICalDtStamp:J

.field public mICalUid:Ljava/lang/String;

.field public mId:J

.field public mIncludeHangout:Z

.field public transient mInfoExtra:Ljava/lang/Object;

.field public mIsBusyFreeCalendar:Z

.field public mIsGroove:Z

.field public mIsOrganizer:Z

.field public mIsRepeating:Z

.field public mIsSharedCalendar:Z

.field public mIsTask:Z

.field public mLocation:Ljava/lang/String;

.field public mMeetingStatus:Ljava/lang/Integer;

.field public mModelUpdatedWithEventCursor:Z

.field public mNumOfAttendees:I

.field public mOrganizer:Ljava/lang/String;

.field public mOrganizerCanRespond:Z

.field public mOrganizerDisplayName:Ljava/lang/String;

.field public mOriginalEnd:J

.field public mOriginalId:J

.field public mOriginalStart:J

.field public mOriginalSyncId:Ljava/lang/String;

.field public mOriginalTime:Ljava/lang/Long;

.field public mOwnerAccount:Ljava/lang/String;

.field public mOwnerAttendeeId:I

.field public mOwnerAttendeeStatus:I

.field public mOwnerCanModify:Z

.field public mOwnerName:Ljava/lang/String;

.field public mRawCalendarColor:I

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mRrule:Ljava/lang/String;

.field public mSequence:I

.field public mShowCalendarName:Z

.field public mStart:J

.field public mSyncId:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 382
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 383
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 385
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    .line 386
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    .line 395
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 397
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 398
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 401
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    .line 404
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 405
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 406
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 407
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 408
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 414
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 418
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 422
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 428
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 432
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 435
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 436
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 437
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 438
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 440
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    .line 446
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 447
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 449
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    .line 450
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 451
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 452
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 453
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 454
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 456
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 457
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 460
    iput v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 465
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 466
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    .line 467
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    .line 468
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 469
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 470
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 472
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    .line 473
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 474
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    .line 478
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    .line 479
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    .line 480
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 481
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 482
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 483
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 484
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 487
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    .line 493
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 495
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mClearDefaultReminders:Z

    .line 502
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 504
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 506
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    .line 512
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 517
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    .line 521
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    .line 524
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    .line 543
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 549
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 550
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 556
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 557
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 382
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 383
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 385
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    .line 386
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    .line 395
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 397
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 398
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 401
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    .line 404
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 405
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 406
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 407
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 408
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 414
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 418
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 422
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 428
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 432
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 435
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 436
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 437
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 438
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 440
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    .line 446
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 447
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 449
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    .line 450
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 451
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 452
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 453
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 454
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 456
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 457
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 460
    iput v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 465
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 466
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    .line 467
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    .line 468
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 469
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 470
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 472
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    .line 473
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 474
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    .line 478
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    .line 479
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    .line 480
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 481
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 482
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 483
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 484
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 487
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    .line 493
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 495
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mClearDefaultReminders:Z

    .line 502
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 504
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 506
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    .line 512
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 517
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    .line 521
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    .line 524
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    .line 543
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    .line 560
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 561
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 563
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 564
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 565
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 566
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 567
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    .line 568
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    .line 570
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 571
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 573
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 574
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    .line 575
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    .line 577
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 578
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 580
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 581
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 582
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 583
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 584
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 585
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 586
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 588
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 589
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 590
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 591
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 592
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 593
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 594
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 595
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 597
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 598
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 599
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    .line 600
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 601
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 602
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 604
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 605
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 606
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 607
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 608
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 609
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 610
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 611
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 612
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 613
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 614
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedConferenceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedConferenceType:Ljava/lang/String;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 618
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 619
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 620
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    .line 622
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 623
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    .line 624
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    .line 625
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 627
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 628
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 629
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 630
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    .line 631
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 632
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    .line 633
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    .line 634
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    .line 635
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    .line 636
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 637
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 638
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 639
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 640
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 642
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    .line 643
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    .line 645
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->clone()Lcom/android/calendar/event/EventExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 649
    :cond_0
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    .line 650
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    .line 651
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-void
.end method

.method addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V
    .locals 4

    .prologue
    .line 774
    invoke-static {p1, p2}, Lcom/android/calendar/event/EditHelper;->getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 778
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    new-instance v2, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 781
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 784
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    return-void
.end method

.method protected checkOriginalModelFields(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eq v1, v2, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return v0

    .line 994
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-ne v1, v2, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_a

    .line 998
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 1004
    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-ne v1, v2, :cond_0

    .line 1007
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1010
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    if-ne v1, v2, :cond_0

    .line 1013
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    if-ne v1, v2, :cond_0

    .line 1016
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-ne v1, v2, :cond_0

    .line 1019
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    if-ne v1, v2, :cond_0

    .line 1022
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    if-ne v1, v2, :cond_0

    .line 1025
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 1028
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-ne v1, v2, :cond_0

    .line 1031
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    if-ne v1, v2, :cond_0

    .line 1034
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-ne v1, v2, :cond_0

    .line 1037
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1040
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-ne v1, v2, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1045
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1052
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_c

    .line 1053
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 1060
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1061
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1068
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1069
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1076
    :cond_6
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    if-ne v1, v2, :cond_0

    .line 1079
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    if-ne v1, v2, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1084
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1091
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 1092
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1099
    :cond_8
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    if-ne v1, v2, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 1104
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1111
    :cond_9
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 1115
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    if-ne v1, v2, :cond_0

    .line 1119
    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    if-ne v1, v2, :cond_0

    .line 1123
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    if-ne v1, v2, :cond_0

    .line 1127
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1001
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1048
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 1056
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 1064
    :cond_d
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 1072
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 1087
    :cond_f
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 1095
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 1107
    :cond_11
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 680
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 681
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 683
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 684
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 685
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 686
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    .line 687
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    .line 689
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 690
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 692
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 693
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 695
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 696
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 697
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 698
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 699
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 700
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 701
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 703
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 704
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 705
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 706
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 707
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 708
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 709
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 710
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 712
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 713
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 714
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    .line 715
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 716
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 717
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 719
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 720
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 721
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 722
    iput v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 723
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 724
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 725
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 726
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 727
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 728
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 729
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedConferenceType:Ljava/lang/String;

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 732
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 733
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 734
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 735
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    .line 738
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 739
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    .line 740
    iput-boolean v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    .line 741
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 742
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 743
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 744
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 745
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    .line 746
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 747
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    .line 749
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    .line 750
    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    .line 751
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    .line 752
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 753
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 754
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 755
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 756
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 757
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    .line 760
    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    .line 761
    iput-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 762
    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    .line 763
    return-void
.end method

.method public clearEventColor()V
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 1168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    .line 1169
    return-void
.end method

.method public createEventDescriptor()Lcom/google/android/calendar/api/EventDescriptor;
    .locals 6

    .prologue
    .line 1245
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    new-instance v1, Lcom/google/android/calendar/api/EventDescriptor;

    new-instance v2, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 1248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    .line 1246
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    if-ne p0, p1, :cond_1

    .line 978
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_2
    instance-of v2, p1, Lcom/android/calendar/event/CalendarEventModel;

    if-nez v2, :cond_3

    move v0, v1

    .line 887
    goto :goto_0

    .line 890
    :cond_3
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel;

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 892
    goto :goto_0

    .line 895
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 896
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 897
    goto :goto_0

    .line 899
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 900
    goto :goto_0

    .line 903
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-nez v2, :cond_7

    .line 904
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v2, :cond_8

    move v0, v1

    .line 905
    goto :goto_0

    .line 907
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 908
    goto :goto_0

    .line 911
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 912
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 913
    goto :goto_0

    .line 915
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 916
    goto :goto_0

    .line 918
    :cond_a
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    iget-boolean v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 919
    goto :goto_0

    .line 922
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 923
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 924
    goto :goto_0

    .line 926
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 927
    goto :goto_0

    .line 930
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 931
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-eqz v2, :cond_f

    move v0, v1

    .line 932
    goto :goto_0

    .line 934
    :cond_e
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 935
    goto/16 :goto_0

    .line 938
    :cond_f
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    move v0, v1

    .line 939
    goto/16 :goto_0

    .line 941
    :cond_10
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    iget-boolean v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 942
    goto/16 :goto_0

    .line 944
    :cond_11
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    move v0, v1

    .line 945
    goto/16 :goto_0

    .line 948
    :cond_12
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    move v0, v1

    .line 949
    goto/16 :goto_0

    .line 951
    :cond_13
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    move v0, v1

    .line 952
    goto/16 :goto_0

    .line 955
    :cond_14
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    move v0, v1

    .line 956
    goto/16 :goto_0

    .line 959
    :cond_15
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 960
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v2, :cond_17

    move v0, v1

    .line 961
    goto/16 :goto_0

    .line 963
    :cond_16
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    .line 964
    goto/16 :goto_0

    .line 967
    :cond_17
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 968
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v2, :cond_19

    move v0, v1

    .line 969
    goto/16 :goto_0

    .line 971
    :cond_18
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    .line 972
    goto/16 :goto_0

    .line 975
    :cond_19
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 976
    goto/16 :goto_0
.end method

.method public getAttendeesString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 790
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string v5, "name:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v3, " email:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v3, " status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarColor()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    return v0
.end method

.method public getEventColor()I
    .locals 1

    .prologue
    .line 1149
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    return v0
.end method

.method public getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;
    .locals 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getHangouts()Ljava/util/List;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Hangout;

    .line 866
    :goto_0
    return-object v0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "eventHangout"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_1
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->NO_HANGOUT:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    goto :goto_0
.end method

.method public getPhoneNumberDetails()Lcom/android/calendar/event/PhoneNumberDetails;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 871
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-nez v1, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-object v0

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v1}, Lcom/android/calendar/event/EventExtras;->getConferencePhoneNumbersDetails()Ljava/util/List;

    move-result-object v1

    .line 875
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/PhoneNumberDetails;

    goto :goto_0
.end method

.method public hasGuestsToEmail()Z
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const/4 v0, 0x1

    .line 1180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrganizerToEmail()Z
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 1197
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1196
    :goto_0
    return v0

    .line 1197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOwnerToEmail()Z
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 1189
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    .line 1189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    .line 807
    .line 808
    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 809
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    add-int/2addr v0, v4

    .line 810
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    add-int/2addr v0, v4

    .line 811
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    add-int/2addr v0, v4

    .line 812
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 813
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 814
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v3

    :goto_4
    add-int/2addr v0, v4

    .line 815
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 816
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v3

    :goto_5
    add-int/2addr v0, v4

    .line 817
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v3

    :goto_6
    add-int/2addr v0, v4

    .line 818
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 819
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v4

    .line 820
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v4

    .line 821
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v4

    .line 822
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v4

    .line 823
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v4

    .line 824
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    add-int/2addr v0, v4

    .line 825
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v4

    .line 826
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v4

    .line 827
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 828
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 829
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v4, :cond_e

    :goto_e
    add-int/2addr v0, v1

    .line 830
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v3

    :goto_f
    add-int/2addr v0, v1

    .line 831
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v3

    :goto_10
    add-int/2addr v0, v1

    .line 832
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    .line 833
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v3

    :goto_11
    add-int/2addr v0, v1

    .line 834
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    .line 835
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    .line 836
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v0, :cond_12

    move v0, v3

    :goto_12
    add-int/2addr v0, v1

    .line 837
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v3

    :goto_13
    add-int/2addr v0, v1

    .line 838
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    move v0, v3

    :goto_14
    add-int/2addr v0, v1

    .line 839
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v3

    :goto_15
    add-int/2addr v0, v1

    .line 840
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    add-int/2addr v0, v1

    .line 841
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    add-int/2addr v0, v1

    .line 842
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    .line 843
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v3

    :goto_16
    add-int/2addr v0, v1

    .line 844
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v0, :cond_17

    move v0, v3

    :goto_17
    add-int/2addr v0, v1

    .line 845
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v3

    :goto_18
    add-int/2addr v0, v1

    .line 846
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    add-int/2addr v0, v1

    .line 847
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v3

    :goto_19
    add-int/2addr v0, v1

    .line 848
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    add-int/2addr v0, v1

    .line 849
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    add-int/2addr v0, v1

    .line 850
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-nez v0, :cond_1a

    move v0, v3

    :goto_1a
    add-int/2addr v0, v1

    .line 851
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    if-nez v1, :cond_1b

    :goto_1b
    add-int/2addr v0, v3

    .line 852
    return v0

    :cond_0
    move v0, v2

    .line 808
    goto/16 :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 813
    goto/16 :goto_3

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    .line 817
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 819
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 820
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 821
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 822
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 823
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 825
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 826
    goto/16 :goto_d

    :cond_e
    move v1, v2

    .line 829
    goto/16 :goto_e

    .line 830
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_f

    .line 831
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    .line 833
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    .line 836
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_12

    .line 837
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_13

    .line 838
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto/16 :goto_14

    .line 839
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_15

    .line 843
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_16

    .line 844
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_17

    .line 845
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_18

    .line 847
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_19

    .line 850
    :cond_1a
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1a

    .line 851
    :cond_1b
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    goto/16 :goto_1b
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 668
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 672
    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 676
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEventCancelled()Z
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1205
    :goto_0
    return v0

    .line 1206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEventColorInitialized()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    return v0
.end method

.method public isEventEditable()Z
    .locals 1

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 1230
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->hasParentInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    goto :goto_0
.end method

.method public isFirstEventInSeries()Z
    .locals 4

    .prologue
    .line 1141
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModifiableGroove()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 1215
    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    .line 1219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 654
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-nez v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCalendarColor(I)V
    .locals 1

    .prologue
    .line 1153
    iput p1, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColor:I

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarColorInitialized:Z

    .line 1155
    return-void
.end method

.method public setEventColor(I)V
    .locals 1

    .prologue
    .line 1158
    iput p1, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColor:I

    .line 1159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventColorInitialized:Z

    .line 1160
    return-void
.end method
