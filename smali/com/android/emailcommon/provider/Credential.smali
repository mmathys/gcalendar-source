.class public Lcom/android/emailcommon/provider/Credential;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/provider/BaseColumns;


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Credential;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/android/emailcommon/provider/Credential;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mExpiration:J

.field public mProviderId:Ljava/lang/String;

.field public mRefreshToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 24
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    const-wide/16 v1, -0x1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/provider/Credential;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    .line 109
    new-instance v0, Lcom/android/emailcommon/provider/Credential$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 66
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 67
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 71
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 72
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    .line 73
    iput-object p3, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 76
    iput-wide p6, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 136
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    instance-of v1, p1, Lcom/android/emailcommon/provider/Credential;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    check-cast p1, Lcom/android/emailcommon/provider/Credential;

    .line 150
    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 151
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 181
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    const-string v1, "provider"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v1, "refreshToken"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "expiration"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string v2, "Exception while serializing Credential"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Credential;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    return-void
.end method
