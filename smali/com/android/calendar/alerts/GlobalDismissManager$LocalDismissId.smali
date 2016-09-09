.class public Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;
.super Ljava/lang/Object;
.source "GlobalDismissManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/GlobalDismissManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDismissId"
.end annotation


# instance fields
.field public final mAccountName:Ljava/lang/String;

.field public final mAccountType:Ljava/lang/String;

.field public final mEventId:J

.field public final mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account Type can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account Name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountType:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountName:Ljava/lang/String;

    .line 116
    iput-wide p3, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mEventId:J

    .line 117
    iput-wide p5, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mStartTime:J

    .line 118
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    check-cast p1, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;

    .line 131
    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mEventId:J

    iget-wide v4, p1, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mEventId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_4
    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mStartTime:J

    iget-wide v4, p1, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 149
    iget-object v0, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 150
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mEventId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mStartTime:J

    iget-wide v4, p0, Lcom/android/calendar/alerts/GlobalDismissManager$LocalDismissId;->mStartTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 153
    return v0
.end method
