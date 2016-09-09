.class public Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EventTimePeriod"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDbEnd:J

.field public final mDbStart:J

.field public final mDuration:Ljava/lang/String;

.field public final mEnd:J

.field public mIsFirst:Z

.field private final mRrule:Ljava/lang/String;

.field public final mStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod$1;

    invoke-direct {v0}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 294
    move-object v1, p0

    move-wide v4, v2

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p1, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    .line 284
    iput-wide p3, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    .line 285
    iput-object p5, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mIsFirst:Z

    .line 287
    iput-object p6, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->getStartAndEndFromDb()Landroid/util/Pair;

    move-result-object v1

    .line 289
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    .line 290
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mIsFirst:Z

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 8

    .prologue
    .line 298
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    iget-object v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iget-wide v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    .line 307
    iget-wide v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    .line 308
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    .line 309
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    .line 312
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v0

    .line 313
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    .line 314
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->getStartAndEndFromDb()Landroid/util/Pair;

    move-result-object v1

    .line 316
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    .line 317
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    .line 322
    :goto_0
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mIsFirst:Z

    .line 323
    return-void

    .line 319
    :cond_0
    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    .line 320
    iput-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getStartAndEndFromDb()Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 326
    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    .line 327
    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    .line 328
    cmp-long v0, v2, v12

    if-nez v0, :cond_1

    .line 329
    iget-object v6, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    .line 330
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :try_start_0
    new-instance v0, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v0}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 333
    invoke-virtual {v0, v6}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v4

    .line 335
    cmp-long v7, v0, v4

    if-ltz v7, :cond_2

    :goto_0
    move-wide v2, v0

    .line 344
    :cond_0
    :goto_1
    cmp-long v0, v2, v12

    if-nez v0, :cond_1

    move-wide v2, v4

    .line 348
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 338
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Invalid duration string: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v0, v1, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v2

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing duration string %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v9

    aput-object v0, v8, v10

    invoke-static {v1, v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 357
    instance-of v0, p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    if-eqz v0, :cond_1

    .line 358
    check-cast p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 359
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    iget-wide v2, p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    iget-wide v2, p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    .line 360
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    .line 361
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 370
    .line 371
    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1f

    .line 372
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 373
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 374
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 375
    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDbEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 403
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mIsFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
