.class public Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
.super Ljava/lang/Object;
.source "DurationTimeframe.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGER_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public considerExistingRooms:Z

.field public customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field public durationInMinutes:I

.field public hasRooms:Z

.field private mCustomDurationIndex:I

.field private mCustomTimeframeOption:I

.field private mDurationLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeframeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeframeOption:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$2;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$2;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->INTEGER_CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/calendar/v2/client/service/api/time/DateTime;ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 86
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 105
    iput p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    .line 106
    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    .line 107
    iput-object p3, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    .line 108
    iput-object p4, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 109
    iput p5, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 110
    iput-object p7, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    .line 111
    iput-object p6, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    .line 112
    iput-boolean p8, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 113
    iput-boolean p9, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 86
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 142
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->INTEGER_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    .line 163
    return-void

    .line 140
    :cond_0
    new-instance v3, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {v0}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    iput-object v3, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 160
    goto :goto_1

    :cond_2
    move v1, v2

    .line 162
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 86
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 117
    iget v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 123
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 124
    iget v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 125
    iget v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    .line 128
    iget v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 129
    iget-boolean v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 130
    iget-boolean v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    .line 131
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    goto :goto_0
.end method

.method private static checkedCast(J)I
    .locals 4

    .prologue
    .line 264
    long-to-int v0, p0

    .line 265
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    return v0
.end method

.method private dateTimeEqual(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_2

    .line 219
    if-nez p2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 220
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 221
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getDefault(JJLjava/util/TimeZone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/TimeZone;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v1, 0x2

    .line 191
    invoke-static {p0, p1}, Lcom/android/calendar/timely/FindTimeUtil;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v1, 0x4

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 195
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    invoke-virtual {p4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    const/4 v3, 0x1

    .line 197
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 198
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    .line 199
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 197
    invoke-interface {v2, v3, v4, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v4

    .line 201
    :cond_0
    sub-long v2, p2, p0

    const-wide/32 v6, 0xea60

    div-long/2addr v2, v6

    .line 202
    invoke-static {v2, v3}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->checkedCast(J)I

    move-result v5

    .line 203
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    const/4 v8, 0x0

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/calendar/v2/client/service/api/time/DateTime;ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    return-object v0
.end method

.method public static isCustomTimeframe(I)Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateBasedTimeframe(I)Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDurationValue(I)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 318
    iput p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 319
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 320
    return-void
.end method

.method public addTimeframeLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 309
    return-void
.end method

.method public containsDurationValue(I)Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsTimeframeLabel(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 226
    instance-of v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 230
    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    iget v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    iget v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    iget v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    .line 233
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    .line 234
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    .line 237
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 238
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->dateTimeEqual(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    iget-boolean v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    iget-boolean v2, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDurationLabels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDurationMillis()J
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDurationValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextAroundADatePivotDate(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeEnd(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDurationIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 371
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDurationSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    :goto_1
    return v0

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->TAG:Ljava/lang/String;

    const-string v2, "Could not find an index to select for the duration."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 378
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getSelectedTimeframeIndex()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDateBasedTimeframe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    move v1, v2

    .line 360
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeLabels()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 361
    if-ne v1, v0, :cond_1

    .line 367
    :goto_2
    return v1

    .line 359
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    goto :goto_0

    .line 360
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->TAG:Ljava/lang/String;

    const-string v1, "Could not find an index to select for the timeframe."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 367
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getSelectedTimeframeLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimeframe(Ljava/util/TimeZone;)Lcom/android/calendar/timely/FindTimeTimeframe;
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 456
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 458
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeStartMillis(Ljava/util/TimeZone;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeEndMillis(Ljava/util/TimeZone;)J

    move-result-wide v4

    .line 460
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationMillis()J

    move-result-wide v6

    .line 457
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/timely/FindTimeTimeframe;->aroundDate(JJJJ)Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 465
    const/4 v1, 0x5

    .line 478
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeStartMillis(Ljava/util/TimeZone;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeEndMillis(Ljava/util/TimeZone;)J

    move-result-wide v4

    .line 479
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationMillis()J

    move-result-wide v6

    .line 477
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/timely/FindTimeTimeframe;->other(IJJJ)Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v3

    if-ne v3, v1, :cond_3

    move v1, v0

    .line 469
    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v1

    if-ne v1, v0, :cond_4

    move v1, v2

    .line 471
    goto :goto_1

    .line 473
    :cond_4
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->TAG:Ljava/lang/String;

    const-string v1, "I cannot recognize the type of timeframe, defaulting to within a week."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 475
    goto :goto_1
.end method

.method public getTimeframeEnd(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    packed-switch v0, :pswitch_data_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid timeframe option is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_0
    invoke-static {p1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 423
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_2
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 430
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTimeframeEndMillis(Ljava/util/TimeZone;)J
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeEnd(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeframeLabels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeframeOption()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    return v0
.end method

.method public getTimeframeStart(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    packed-switch v0, :pswitch_data_0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid timeframe option is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v1, 0x1

    .line 404
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v1

    .line 403
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 405
    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 411
    :cond_0
    :goto_0
    :pswitch_1
    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object p1

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTimeframeStartMillis(Ljava/util/TimeZone;)J
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeStart(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeframeTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    packed-switch v0, :pswitch_data_0

    .line 392
    const-string v0, "INVALID"

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    const-string v0, "TODAY"

    goto :goto_0

    .line 387
    :pswitch_1
    const-string v0, "WITHIN_A_FEW_DAYS"

    goto :goto_0

    .line 388
    :pswitch_2
    const-string v0, "WITHIN_A_WEEK"

    goto :goto_0

    .line 389
    :pswitch_3
    const-string v0, "AROUND_DATE"

    goto :goto_0

    .line 390
    :pswitch_4
    const-string v0, "ON_DATE"

    goto :goto_0

    .line 391
    :pswitch_5
    const-string v0, "CUSTOM"

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 213
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCustomDuration(I)Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateBasedTimeframe()Z
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDateBasedTimeframe(I)Z

    move-result v0

    return v0
.end method

.method public isDurationSelected(I)Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCustomDurationValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 340
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    if-eq v0, v2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    iput v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    .line 344
    :cond_0
    return-void
.end method

.method public removeCustomTimeframeLabel()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 351
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    .line 353
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_0
    return-void
.end method

.method public setDurationOption(I)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 286
    return-void
.end method

.method public setTimeframeOption(I)V
    .locals 1

    .prologue
    .line 276
    .line 277
    invoke-static {p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isCustomTimeframe(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    :cond_0
    iput p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 246
    const-string v2, "{mTimeframeOption=%d, mCustomTimeframeOption=%d, mCustomDurationIndex=%d, mTimeframeLabels=%s, mTimeframeComposableWithDurationLabels=%s, mDurationLabels=%s, mDurationValues=%s, cstDate.millis=%d, cstDate.tz=%s, durationInMinutes=%d,considerExistingRooms=%b, hasRooms=%b}"

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    aput-object v1, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    aput-object v1, v3, v0

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-nez v0, :cond_0

    .line 253
    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-nez v0, :cond_1

    .line 254
    const-string v0, "null"

    :goto_1
    aput-object v0, v3, v1

    const/16 v0, 0x9

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    .line 246
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mTimeframeComposableWithDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mDurationValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 175
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomDurationIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->mCustomTimeframeOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-boolean v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->hasRooms:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 179
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 177
    goto :goto_2

    :cond_3
    move v2, v3

    .line 178
    goto :goto_3
.end method
