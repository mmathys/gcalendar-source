.class public Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;
.super Ljava/lang/Object;
.source "AttendeeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;,
        Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;
    }
.end annotation


# static fields
.field public static final DEFAULT_ATTENDEE_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUEST_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

.field public static final RESPONSE_PRIORITY:[I

.field public static final ROOM_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$1;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$1;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->DEFAULT_ATTENDEE_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 35
    new-instance v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$2;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$2;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->GUEST_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

    .line 45
    new-instance v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$3;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$3;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->ROOM_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->RESPONSE_PRIORITY:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
        0x3
    .end array-data
.end method

.method public static getAttendeeName(Lcom/google/android/calendar/api/attendee/Attendee;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getContactInfo(Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/android/calendar/timely/ContactInfo;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v1, v1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAttendee(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/util/List;)Lcom/google/android/calendar/api/attendee/Attendee;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;)",
            "Lcom/google/android/calendar/api/attendee/Attendee;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 147
    iget-object v2, v0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWriteAccess(Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)Z
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->WRITER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->compareTo(Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestContactsPermissionsIfMissing(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method
