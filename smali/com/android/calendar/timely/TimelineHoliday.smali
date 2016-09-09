.class public Lcom/android/calendar/timely/TimelineHoliday;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "TimelineHoliday.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelineHoliday$Info;,
        Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;,
        Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHeaderImageUrl:Ljava/lang/String;

.field private final mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGlobalsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const-class v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelineHoliday;->TAG:Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineHoliday$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineHoliday;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Landroid/os/Parcel;)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/timely/TimelineHoliday;->mDescription:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/timely/TimelineHoliday;->mHeaderImageUrl:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mIsGlobalsLoaded:Z

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    .line 263
    :goto_1
    if-ge v1, v0, :cond_1

    .line 264
    new-instance v2, Lcom/android/calendar/timely/TimelineHoliday$Info;

    invoke-direct {v2, p1}, Lcom/android/calendar/timely/TimelineHoliday$Info;-><init>(Landroid/os/Parcel;)V

    .line 265
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/TimelineHoliday;->addHolidayInfo(Lcom/android/calendar/timely/TimelineHoliday$Info;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelineHoliday$Info;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelineHoliday;->addHolidayInfo(Lcom/android/calendar/timely/TimelineHoliday$Info;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineHoliday;->setHeaderImageUrl(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private addHolidayInfo(Lcom/android/calendar/timely/TimelineHoliday$Info;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method private getNames()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getHolidayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 432
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initHolidayInformation(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v2, Lcom/android/calendar/SparseArrayIterator;

    invoke-direct {v2, p1}, Lcom/android/calendar/SparseArrayIterator;-><init>(Landroid/util/SparseArray;)V

    .line 297
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday;

    .line 299
    invoke-static {v1, v0}, Lcom/android/calendar/timely/TimelineHoliday;->initHolidayInformation(Lcom/android/calendar/timely/data/CalendarsCache;Lcom/android/calendar/timely/TimelineHoliday;)V

    goto :goto_0
.end method

.method public static initHolidayInformation(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {v0, p1}, Lcom/android/calendar/timely/TimelineHoliday;->initHolidayInformation(Lcom/android/calendar/timely/data/CalendarsCache;Lcom/android/calendar/timely/TimelineHoliday;)V

    goto :goto_0
.end method

.method protected static initHolidayInformation(Lcom/android/calendar/timely/data/CalendarsCache;Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 6

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineHoliday;->getHolidayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    .line 310
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->getCalendarId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->getSafeData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/CalendarItem;

    .line 311
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineHoliday$Info;->setCalendarItem(Lcom/android/calendar/timely/data/CalendarItem;)V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/timely/TimelineHoliday;->mIsGlobalsLoaded:Z

    .line 316
    return-void
.end method


# virtual methods
.method public addIdenticalHoliday(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calendar/timely/TimelineHoliday$Info;

    invoke-direct {v1, p1}, Lcom/android/calendar/timely/TimelineHoliday$Info;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public fillModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->clear()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 327
    iput-object p0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public getCountOfHolidays()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHolidayInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday$Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mHeaderImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x4

    return v0
.end method

.method public hasHeadlineImage()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mHeaderImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalsLoaded()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mIsGlobalsLoaded:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineHoliday;->mDescription:Ljava/lang/String;

    .line 414
    return-void
.end method

.method setHeaderImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineHoliday;->mHeaderImageUrl:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 356
    invoke-super {p0}, Lcom/android/calendar/timely/TimelineEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getCountOfHolidays()I

    move-result v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineHoliday;->getNames()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/TimelineEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 363
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mHeaderImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mIsGlobalsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    .line 369
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/TimelineHoliday$Info;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :cond_1
    return-void
.end method
