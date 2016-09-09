.class public Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
.super Ljava/lang/Object;
.source "TimelyEventData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesUrlConstants;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundImageUrl:Ljava/lang/String;

.field private transient mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

.field private transient mDeepLinkData:Lcom/google/api/services/calendar/model/DeepLinkData;

.field private mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

.field private transient mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

.field private transient mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

.field private transient mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

.field private transient mTitleContactAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v9}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 83
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTransientVariables(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v0, p5}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setEventGadget(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v0, p6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setEventSource(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 87
    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v0, p7}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v0, p8}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setConferenceData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct/range {p0 .. p8}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 99
    invoke-virtual {p0, v0, p9}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setDeepLinkData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static createAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const-class v2, Lcom/google/api/services/calendar/model/EventAttachment;

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "Timely"

    const-string v2, "failed to parse attachments: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createConferenceData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 5

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    :try_start_0
    const-class v0, Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ConferenceData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "Timely"

    const-string v2, "failed to parse conference data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createEventGadget(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 5

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    const-class v0, Lcom/google/api/services/calendar/model/Event$Gadget;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Gadget;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "Timely"

    const-string v2, "failed to parse event gadget: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createEventSource(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Source;
    .locals 5

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    const-class v0, Lcom/google/api/services/calendar/model/Event$Source;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Source;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "Timely"

    const-string v2, "failed to parse event source: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/StructuredLocation;
    .locals 5

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    :try_start_0
    const-class v0, Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/StructuredLocation;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "Timely"

    const-string v2, "failed to parse structured location: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const-class v2, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "Timely"

    const-string v2, "failed to parse titleContactAnnotations: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 266
    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 267
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTransientVariables(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    .line 269
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 270
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setEventGadget(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setConferenceData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private setEventGadget(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createEventGadget(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    goto :goto_0
.end method

.method private setEventSource(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createEventSource(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    goto :goto_0
.end method

.method private setTransientVariables(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 107
    if-eqz p3, :cond_0

    .line 109
    :try_start_0
    const-class v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-virtual {p1, p3, v0}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/TypeNotPresentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "Timely"

    const-string v2, "failed to parse smartmail: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    iput-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 116
    const-string v1, "Timely"

    const-string v2, "failed to parse smartmail: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    iput-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 245
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/StructuredLocation;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 249
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->titleContactAnnotationsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Gadget;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Source;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x6

    .line 252
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->attachmentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    if-eqz v3, :cond_0

    .line 253
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/ConferenceData;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    aput-object v1, v2, v0

    .line 245
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 256
    return-void

    :cond_1
    move-object v0, v1

    .line 246
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 247
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 250
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 251
    goto :goto_3
.end method


# virtual methods
.method public attachmentsAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    const-string v0, "[]"

    .line 471
    :goto_0
    return-object v0

    .line 466
    :cond_1
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const-string v1, "Timely"

    const-string v2, "failed to serialize attachments: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 471
    const-string v0, "[]"

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    .line 285
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    .line 286
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    .line 287
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    .line 289
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    .line 290
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    .line 291
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 292
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mDeepLinkData:Lcom/google/api/services/calendar/model/DeepLinkData;

    .line 293
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

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
    .line 459
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    return-object v0
.end method

.method public getDeepLinkData()Lcom/google/api/services/calendar/model/DeepLinkData;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventGadget()Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    return-object v0
.end method

.method public getEventSource()Lcom/google/api/services/calendar/model/Event$Source;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    return-object v0
.end method

.method public getFirstEventLocation()Lcom/google/api/services/calendar/model/EventLocation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v1

    .line 500
    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/StructuredLocation;->getLocations()Ljava/util/List;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventLocation;

    goto :goto_0
.end method

.method public getSmartMailImageUrl(II)Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-static {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->getSmartMailImageUrl(Lcom/google/api/services/calendar/model/SmartMailInfo;II)Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    move-result-object v0

    return-object v0
.end method

.method public getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    return-object v0
.end method

.method public getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    return-object v0
.end method

.method public getTitleContactAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public hasImageData(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 517
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailImageUrl(II)Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getFirstEventLocation()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v2

    .line 528
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v2

    if-nez v2, :cond_0

    .line 533
    :cond_2
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hasStructuredLocation()Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getFirstEventLocation()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelyData()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    .line 482
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    .line 484
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    .line 484
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 451
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    goto :goto_0
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
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
    .line 447
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    .line 448
    return-void
.end method

.method public setBackgroundImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setConferenceData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createConferenceData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 301
    return-void
.end method

.method public setConferenceData(Lcom/google/api/services/calendar/model/ConferenceData;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 297
    return-void
.end method

.method public setDeepLinkData(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public setEventGadget(Lcom/google/api/services/calendar/model/Event$Gadget;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    .line 402
    return-void
.end method

.method public setEventSource(Lcom/google/api/services/calendar/model/Event$Source;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    .line 378
    return-void
.end method

.method public setSmartMailInfo(Lcom/google/api/services/calendar/model/SmartMailInfo;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    .line 370
    return-void
.end method

.method public setStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 353
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    goto :goto_0
.end method

.method public setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    .line 350
    return-void
.end method

.method public setTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 421
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    goto :goto_0
.end method

.method public setTitleContactAnnotations(Ljava/util/List;)V
    .locals 0
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
    .line 417
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    .line 418
    return-void
.end method

.method public titleContactAnnotationsAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    const-string v0, "[]"

    .line 442
    :goto_0
    return-object v0

    .line 436
    :cond_1
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "Timely"

    const-string v2, "failed to serialize titleContactAnnotations: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 442
    const-string v0, "[]"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    if-eqz v1, :cond_0

    .line 541
    const-string v1, "location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-eqz v1, :cond_1

    .line 547
    const-string v1, "smart mail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    const-string v1, "event background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 558
    const-string v1, "associated contacts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mTitleContactAnnotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 562
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    if-eqz v1, :cond_4

    .line 563
    const-string v1, "event gadget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    if-eqz v1, :cond_5

    .line 568
    const-string v1, "event source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    :cond_5
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 573
    const-string v1, "attachments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mAttachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 577
    :cond_6
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    if-eqz v1, :cond_7

    .line 578
    const-string v1, "conference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mStructuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/StructuredLocation;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->titleContactAnnotationsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventGadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Gadget;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mEventSource:Lcom/google/api/services/calendar/model/Event$Source;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Source;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->attachmentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->mConferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceData;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return-void

    :cond_1
    move-object v0, v1

    .line 213
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 214
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 217
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 218
    goto :goto_3
.end method
