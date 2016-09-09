.class public Lcom/android/calendar/event/EventIcsBuilder;
.super Ljava/lang/Object;
.source "EventIcsBuilder.java"


# static fields
.field private static final CALENDAR_CAL_SCALE:Lnet/fortuna/ical4j/model/Property;

.field private static final CALENDAR_METHOD:Lnet/fortuna/ical4j/model/Property;

.field private static final CALENDAR_PROD_ID:Lnet/fortuna/ical4j/model/Property;

.field private static final CALENDAR_VERSION:Lnet/fortuna/ical4j/model/Property;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/calendar/event/EventIcsBuilder;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EventIcsBuilder;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lnet/fortuna/ical4j/model/property/ProdId;

    const-string v1, "-//Google Inc//Google Calendar 70.9054//EN"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/ProdId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_PROD_ID:Lnet/fortuna/ical4j/model/Property;

    .line 69
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    sput-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_VERSION:Lnet/fortuna/ical4j/model/Property;

    .line 70
    sget-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    sput-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_CAL_SCALE:Lnet/fortuna/ical4j/model/Property;

    .line 71
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    sput-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_METHOD:Lnet/fortuna/ical4j/model/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/calendar/event/EventIcsBuilder;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private static addEventStatus(Lnet/fortuna/ical4j/model/PropertyList;I)V
    .locals 1

    .prologue
    .line 308
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 310
    :pswitch_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    .line 323
    :goto_1
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 313
    :pswitch_1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    goto :goto_1

    .line 316
    :pswitch_2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static addPartStat(Lnet/fortuna/ical4j/model/property/Attendee;I)V
    .locals 2

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 279
    :pswitch_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 295
    :goto_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    goto :goto_0

    .line 282
    :pswitch_1
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_1

    .line 285
    :pswitch_2
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_1

    .line 288
    :pswitch_3
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_1

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static buildAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lnet/fortuna/ical4j/model/property/Attendee;
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventIcsBuilder;->buildAttendee(Ljava/lang/String;Ljava/lang/String;I)Lnet/fortuna/ical4j/model/property/Attendee;

    move-result-object v0

    return-object v0
.end method

.method private static buildAttendee(Ljava/lang/String;Ljava/lang/String;I)Lnet/fortuna/ical4j/model/property/Attendee;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee;

    invoke-static {p0}, Lcom/android/calendar/event/EventIcsBuilder;->getEmailWithScheme(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Attendee;-><init>(Ljava/net/URI;)V

    .line 253
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    sget-object v2, Lnet/fortuna/ical4j/model/parameter/Role;->REQ_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 254
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/model/parameter/Cn;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/parameter/Cn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 255
    invoke-static {v0, p2}, Lcom/android/calendar/event/EventIcsBuilder;->addPartStat(Lnet/fortuna/ical4j/model/property/Attendee;I)V

    .line 256
    return-object v0
.end method

.method private static getEmailWithScheme(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .prologue
    .line 239
    const-string v0, "mailto:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public generateEventFile(Lcom/android/calendar/event/CalendarEventModel;)Landroid/net/Uri;
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/calendar/event/EventIcsBuilder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v2

    .line 229
    :goto_0
    return-object v0

    .line 103
    :cond_1
    new-instance v4, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v4}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 104
    sget-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_PROD_ID:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 105
    sget-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_VERSION:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 106
    sget-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_CAL_SCALE:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 107
    sget-object v0, Lcom/android/calendar/event/EventIcsBuilder;->CALENDAR_METHOD:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 109
    new-instance v5, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v5}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 114
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_3

    .line 115
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 116
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 119
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->clear(I)V

    .line 120
    invoke-virtual {v3, v11}, Ljava/util/Calendar;->clear(I)V

    .line 121
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->clear(I)V

    .line 122
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->clear(I)V

    .line 123
    new-instance v1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lnet/fortuna/ical4j/model/Date;-><init>(J)V

    .line 125
    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->clear(I)V

    .line 127
    invoke-virtual {v3, v11}, Ljava/util/Calendar;->clear(I)V

    .line 128
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->clear(I)V

    .line 129
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->clear(I)V

    .line 130
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lnet/fortuna/ical4j/model/Date;-><init>(J)V

    .line 156
    :goto_1
    new-instance v3, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v3, v1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v5, v3}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 157
    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v5, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 159
    new-instance v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 161
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 163
    :try_start_0
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/RRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    :goto_2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Organizer;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/calendar/event/EventIcsBuilder;->getEmailWithScheme(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Organizer;-><init>(Ljava/net/URI;)V

    .line 170
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    new-instance v3, Lnet/fortuna/ical4j/model/parameter/Cn;

    iget-object v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {v3, v6}, Lnet/fortuna/ical4j/model/parameter/Cn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 171
    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 174
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 175
    new-instance v1, Lnet/fortuna/ical4j/util/UidGenerator;

    new-instance v3, Lnet/fortuna/ical4j/util/SimpleHostInfo;

    const-string v6, "calendar.android.google.com"

    invoke-direct {v3, v6}, Lnet/fortuna/ical4j/util/SimpleHostInfo;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lnet/fortuna/ical4j/util/UidGenerator;-><init>(Lnet/fortuna/ical4j/util/HostInfo;Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/fortuna/ical4j/util/UidGenerator;->generateUid()Lnet/fortuna/ical4j/model/property/Uid;

    move-result-object v0

    .line 177
    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 179
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    invoke-static {v0, v1, v8}, Lcom/android/calendar/event/EventIcsBuilder;->buildAttendee(Ljava/lang/String;Ljava/lang/String;I)Lnet/fortuna/ical4j/model/property/Attendee;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 191
    :goto_3
    new-instance v0, Lnet/fortuna/ical4j/model/property/Description;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Description;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 192
    new-instance v0, Lnet/fortuna/ical4j/model/property/Location;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 193
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence;

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 194
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    invoke-static {v5, v0}, Lcom/android/calendar/event/EventIcsBuilder;->addEventStatus(Lnet/fortuna/ical4j/model/PropertyList;I)V

    .line 195
    new-instance v0, Lnet/fortuna/ical4j/model/property/Summary;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 196
    sget-object v0, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 198
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 199
    if-eqz v0, :cond_7

    .line 200
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getModelAttachments()Ljava/util/List;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 203
    new-instance v3, Lnet/fortuna/ical4j/model/property/Attach;

    .line 204
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/fortuna/ical4j/model/property/Attach;-><init>(Ljava/net/URI;)V

    .line 203
    invoke-virtual {v5, v3}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_4

    .line 133
    :cond_3
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-direct {v1, v6, v7}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 134
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-direct {v0, v6, v7}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 137
    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 138
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v6

    .line 139
    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-interface {v6, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v3

    .line 140
    invoke-interface {v6}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->clear()V

    .line 143
    :goto_5
    if-nez v3, :cond_4

    .line 145
    invoke-virtual {v1, v8}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 146
    invoke-virtual {v0, v8}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto/16 :goto_1

    .line 148
    :cond_4
    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 149
    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/android/calendar/event/EventIcsBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse RRule"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 184
    :cond_5
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 185
    invoke-static {v0}, Lcom/android/calendar/event/EventIcsBuilder;->buildAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lnet/fortuna/ical4j/model/property/Attendee;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_6

    .line 187
    :cond_6
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    iget v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-static {v0, v1, v3}, Lcom/android/calendar/event/EventIcsBuilder;->buildAttendee(Ljava/lang/String;Ljava/lang/String;I)Lnet/fortuna/ical4j/model/property/Attendee;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto/16 :goto_3

    .line 209
    :cond_7
    new-instance v0, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-direct {v0, v5}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 210
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    .line 211
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 213
    new-instance v0, Lnet/fortuna/ical4j/model/Calendar;

    invoke-direct {v0, v4, v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 216
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/calendar/event/EventIcsBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ics"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 218
    new-instance v3, Ljava/io/File;

    const-string v4, "invite.ics"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    new-instance v4, Lnet/fortuna/ical4j/data/CalendarOutputter;

    invoke-direct {v4}, Lnet/fortuna/ical4j/data/CalendarOutputter;-><init>()V

    invoke-virtual {v4, v0, v1}, Lnet/fortuna/ical4j/data/CalendarOutputter;->output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/OutputStream;)V

    .line 223
    iget-object v0, p0, Lcom/android/calendar/event/EventIcsBuilder;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.calendar.fileprovider"

    invoke-static {v0, v1, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/fortuna/ical4j/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    :goto_7
    sget-object v1, Lcom/android/calendar/event/EventIcsBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create file"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 229
    goto/16 :goto_0

    .line 226
    :catch_2
    move-exception v0

    goto :goto_7

    :cond_8
    move-object v3, v2

    goto/16 :goto_5
.end method

.method public getEventFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "text/calendar"

    return-object v0
.end method
