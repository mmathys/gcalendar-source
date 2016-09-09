.class public final Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    .line 2275
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2276
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2277
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2279
    :cond_0
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2257
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 2258
    const-string v1, "text"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2260
    :cond_0
    const-string v1, "time"

    iget-wide v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2261
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 2262
    const-string v1, "sender"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2264
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2265
    const-string v1, "type"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 2268
    const-string v1, "uri"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2270
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2230
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method
