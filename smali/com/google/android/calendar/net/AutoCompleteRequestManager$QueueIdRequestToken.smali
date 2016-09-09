.class Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;
.super Ljava/lang/Object;
.source "AutoCompleteRequestManager.java"

# interfaces
.implements Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/AutoCompleteRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueIdRequestToken"
.end annotation


# instance fields
.field private final mQueueId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    .line 316
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    if-ne p0, p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    if-nez v2, :cond_2

    move v0, v1

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    check-cast p1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    .line 332
    iget v2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    iget v3, p1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getQueueId()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    iget v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->mQueueId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "QueueIdRequestToken{mQueueId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
