.class public Lcom/android/calendar/timely/TimelineEvent;
.super Ljava/lang/Object;
.source "TimelineEvent.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public calendarAccessLevel:I

.field public calendarId:I

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public endTimeUnspecified:Z

.field public extra:Landroid/os/Parcelable;

.field public hasImage:Z

.field public hasSmartMail:Z

.field public id:J

.field public isTransparent:Z

.field public location:Ljava/lang/String;

.field public organizer:Ljava/lang/String;

.field public ownerAccount:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelineEvent;->TAG:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/android/calendar/timely/TimelineEvent$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineEvent$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 99
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    .line 101
    iput-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    .line 103
    iput-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    .line 107
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    .line 108
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 109
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    .line 110
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 111
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 112
    iput-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    .line 113
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    .line 115
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    .line 117
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    .line 119
    iput-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    .line 121
    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    .line 122
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 149
    :goto_4
    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_5
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    .line 157
    return-void

    :cond_1
    move v0, v2

    .line 135
    goto :goto_0

    :cond_2
    move v0, v2

    .line 142
    goto :goto_1

    :cond_3
    move v0, v2

    .line 146
    goto :goto_2

    :cond_4
    move v0, v2

    .line 147
    goto :goto_3

    :cond_5
    move v0, v2

    .line 148
    goto :goto_4

    :cond_6
    move v1, v2

    .line 156
    goto :goto_5
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineEvent;->id:J

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 70
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    .line 72
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->color:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    .line 73
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    .line 78
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    .line 79
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 80
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    .line 81
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 82
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 83
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    .line 84
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    .line 85
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    .line 87
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    .line 89
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    .line 90
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    .line 91
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    .line 93
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    .line 94
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarId()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 217
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    return v0
.end method

.method public getSortId()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    return-wide v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 331
    const-string v0, ""

    .line 345
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public hasAssist()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeclinedStatus()Z
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeadlineImage()Z
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineEvent;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    return v0
.end method

.method public hasInvitedStatus()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineEvent;->shouldShowOrganizerImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    return v0
.end method

.method public setEventExtrasFlags(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 413
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineEvent;->setExtrasFlags(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    sget-object v1, Lcom/android/calendar/timely/TimelineEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to decode: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected setExtrasFlags(I)V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    .line 422
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    .line 423
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    .line 425
    return-void
.end method

.method public shouldShowOrganizerImage()Z
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEndTime()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spansAtLeastOneDay()Z
    .locals 4

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineEvent;->showEndTime()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSwipe()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    iget v4, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    iget v5, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    iget-object v6, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x57

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "[title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", id="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", allDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTimeUnspecified:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    :goto_4
    iget v0, p0, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineEvent;->isTransparent:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto :goto_1

    :cond_2
    move v0, v2

    .line 186
    goto :goto_2

    :cond_3
    move v0, v2

    .line 187
    goto :goto_3

    .line 192
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    :cond_5
    move v1, v2

    .line 197
    goto :goto_5
.end method
