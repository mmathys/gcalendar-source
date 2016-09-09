.class public Lcom/google/android/calendar/event/EventExtrasImpl;
.super Ljava/lang/Object;
.source "EventExtrasImpl.java"

# interfaces
.implements Lcom/android/calendar/event/EventExtras;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/calendar/event/EventExtrasImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# instance fields
.field protected transient mRelatedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->TAG:Ljava/lang/String;

    .line 321
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/event/EventExtrasImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 9

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    .line 75
    return-void
.end method

.method public static convertFromEventLocationV2(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 4

    .prologue
    .line 368
    new-instance v0, Lcom/google/api/services/calendar/model/EventLocation;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/EventLocation;-><init>()V

    .line 369
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v1, Lcom/google/api/services/calendar/model/Address;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Address;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/Address;->setFormattedAddress(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Address;

    .line 372
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventLocation;->setAddress(Lcom/google/api/services/calendar/model/Address;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    new-instance v1, Lcom/google/api/services/calendar/model/GeoCoordinates;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/GeoCoordinates;-><init>()V

    .line 376
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->setLatitude(Ljava/lang/Double;)Lcom/google/api/services/calendar/model/GeoCoordinates;

    .line 377
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->setLongitude(Ljava/lang/Double;)Lcom/google/api/services/calendar/model/GeoCoordinates;

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventLocation;->setGeo(Lcom/google/api/services/calendar/model/GeoCoordinates;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventLocation;->setMapsClusterId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 381
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventLocation;->setName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 382
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventLocation;->setUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 383
    return-object v0
.end method

.method public static convertToEventLocationV2(Lcom/google/api/services/calendar/model/EventLocation;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 6

    .prologue
    .line 345
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setMapsClusterId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 349
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getAddress()Lcom/google/api/services/calendar/model/Address;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getAddress()Lcom/google/api/services/calendar/model/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Address;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setFormattedAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    .line 352
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setPostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 358
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;-><init>(DD)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 360
    :cond_1
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public static createEventExtras(Landroid/content/Context;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 3

    .prologue
    .line 401
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v0, :cond_0

    .line 402
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 404
    :cond_0
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v1

    .line 405
    if-nez v1, :cond_1

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    goto :goto_0
.end method

.method public static createEventExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 9

    .prologue
    .line 388
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 391
    :cond_0
    sget-object v1, Lcom/google/android/calendar/event/EventExtrasImpl;->sTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v1

    .line 393
    if-nez v1, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    goto :goto_0
.end method

.method private getConferences()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Conference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceData;->getConferences()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 415
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceData;->getConferences()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public attachmentsAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->attachmentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/calendar/event/EventExtras;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/calendar/event/EventExtrasImpl;->clone()Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/calendar/event/EventExtrasImpl;->clone()Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getAttachments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConferencePhoneNumbersDetails()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/PhoneNumberDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/calendar/event/EventExtrasImpl;->getConferences()Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Conference;

    .line 120
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meetingPhoneNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getPassCode()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v3, v0}, Lcom/android/calendar/event/PhoneNumberDetails;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/event/PhoneNumberDetails;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    return-object v1
.end method

.method public getEventImage(Lcom/android/calendar/timely/EventImageRequestKey;)Lcom/google/android/calendar/timely/EventImage;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/calendar/timely/EventImage;

    iget-object v1, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/timely/EventImage;-><init>(Lcom/android/calendar/timely/EventImageRequestKey;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    return-object v0
.end method

.method public getEventLocations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/StructuredLocation;->getLocations()Ljava/util/List;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventLocation;

    .line 239
    invoke-static {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->convertToEventLocationV2(Lcom/google/api/services/calendar/model/EventLocation;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 241
    goto :goto_0
.end method

.method public getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getEventSource()Lcom/google/api/services/calendar/model/Event$Source;

    move-result-object v1

    .line 131
    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/EventSource;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event$Source;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event$Source;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/calendar/v2/client/service/api/events/EventSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHangouts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Hangout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/calendar/event/EventExtrasImpl;->getConferences()Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Conference;

    .line 103
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getType()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "eventHangout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "eventNamedHangout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "meeting"

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    :cond_1
    new-instance v4, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 107
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Conference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v3}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    return-object v1
.end method

.method public getModelAttachments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 288
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

    .line 290
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->newBuilder()Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 291
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setFileUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 293
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getIconLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/Attachment;

    move-result-object v0

    .line 295
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 297
    goto :goto_0
.end method

.method public getRelatedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mRelatedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    return-object v0
.end method

.method public getTitleAnnotations(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    .line 247
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getTitleContactAnnotations()Ljava/util/List;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 251
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 252
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    .line 256
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->getAnnotation()Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    move-result-object v4

    .line 257
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->getContact()Lcom/google/api/services/calendar/model/ContactReference;

    move-result-object v5

    .line 258
    const/4 v0, 0x0

    .line 260
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/ContactReference;->getFocusId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 261
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/ContactReference;->getFocusId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromFocusId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    move-result-object v0

    .line 263
    :cond_2
    new-instance v5, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    invoke-direct {v5}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;-><init>()V

    .line 264
    invoke-virtual {v5, v0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;

    move-result-object v0

    .line 267
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;->getStart()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 266
    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->unicodeToJavaCharOffset(Ljava/lang/String;I)I

    move-result v5

    .line 269
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;->getText()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-static {v5, v4, v0}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->forContact(ILjava/lang/String;Lcom/google/calendar/v2/client/service/api/contacts/Contact;)Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->TAG:Ljava/lang/String;

    const-string v3, "Tagged contacts are out of sync with the store - dropping them."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    sget-object v0, Lcom/google/android/calendar/event/EventExtrasImpl;->TAG:Ljava/lang/String;

    const-string v3, "eventTitle: %s, contactAnnotations: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    move-object v0, v1

    .line 278
    goto :goto_0
.end method

.method public hasImageData(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasImageData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStructuredLocation()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasStructuredLocation()Z

    move-result v0

    return v0
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method public setRelatedContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mRelatedContacts:Ljava/util/List;

    .line 307
    return-void
.end method

.method public setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)V

    .line 83
    return-void
.end method

.method public setTitleContactAnnotations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTitleContactAnnotations(Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public titleContactAnnotationsAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->titleContactAnnotationsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/calendar/event/EventExtrasImpl;->mTimelyEventData:Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    return-void
.end method
