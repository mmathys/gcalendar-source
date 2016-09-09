.class public Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;
.super Ljava/lang/Object;
.source "GlobalDismissManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/GlobalDismissManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmId"
.end annotation


# instance fields
.field public mEventId:J

.field public mStart:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-wide p1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;->mEventId:J

    .line 163
    iput-wide p3, p0, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;->mStart:J

    .line 164
    return-void
.end method
