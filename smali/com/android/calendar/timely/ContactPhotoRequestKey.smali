.class public Lcom/android/calendar/timely/ContactPhotoRequestKey;
.super Ljava/lang/Object;
.source "ContactPhotoRequestKey.java"

# interfaces
.implements Lcom/android/bitmap/RequestKey;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactInfo:Lcom/android/calendar/timely/ContactInfo;

.field private final mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/ContactInfo;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 50
    sget-object v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->TAG:Ljava/lang/String;

    const-string v1, "Expecting application context."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    :goto_0
    new-instance v0, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/ContactInfoLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

    .line 56
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    .line 57
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContentResolver:Landroid/content/ContentResolver;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ContactInfo;)V

    .line 46
    return-void
.end method


# virtual methods
.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    iget-object v0, v0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    iget-object v0, v0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    .line 78
    :goto_0
    iget-object v1, v0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, v0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mInputStream:Ljava/io/InputStream;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mInputStream:Ljava/io/InputStream;

    return-object v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

    iget-object v1, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfoLoader;->load(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    iget-object v1, p1, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasOrientationExif()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoRequestKey;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo;->hashCode()I

    move-result v0

    return v0
.end method
