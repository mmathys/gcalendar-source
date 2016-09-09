.class Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;
.super Ljava/lang/Object;
.source "GlobalDismissManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/GlobalDismissManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalDismissId"
.end annotation


# instance fields
.field public final mAccountName:Ljava/lang/String;

.field public final mStartTime:J

.field public final mSyncId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account Name can not be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SyncId can not be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mAccountName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mSyncId:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mStartTime:J

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/android/calendar/alerts/GlobalDismissManager$1;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_3
    check-cast p1, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;

    .line 78
    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mStartTime:J

    iget-wide v4, p1, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mAccountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mSyncId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mSyncId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mSyncId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mStartTime:J

    iget-wide v4, p0, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;->mStartTime:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 96
    return v0
.end method
